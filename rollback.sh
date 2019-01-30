#!/usr/bin/env sh
#
# Auto revert any migration when performing git checkout
# Assumes all migration are reversible

able_to_git_checkout() {
  git diff --shortstat
}

is_git_branch() {
  git rev-parse --verify $1 &> /dev/null
}

is_rails_project() {
  grep 'rails' 'Gemfile' -s &> /dev/null
}

rollback() {
  if ! able_to_git_checkout; then return; fi
  if ! is_git_branch $1; then return; fi
  if ! is_rails_project; then return; fi
  if [ -d "db/migrate" ]; then
    # Compare HEAD and other branch, get unique migration versions
    versions="$(git diff --name-only $(git rev-parse --abbrev-ref $1...HEAD) db/migrate | grep -oE '\d{14}' )"
    # Reverse the order, revert starting from latest migration
    versions="$(echo $versions | awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }')"
    for version in $versions; do
      echo "Running bundle exec rake db:migrate:down VERSION=$version"
      bundle exec rake db:migrate:down VERSION=$version &> /dev/null
    done
    git checkout -- . db/schema.rb &> /dev/null
  fi
}

git() {
  if [ $1 == "checkout" ]; then rollback $2; fi
  command git "$@"
}