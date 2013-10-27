# Rails 4 aliases

function _rails_command () {
  if [ -e "script/server" ]; then
    ruby script/$@
  elif [ -e "script/rails" ]; then
    ruby script/rails $@
  else
    ruby bin/rails $@  
  fi
}

function rails_new() {
  rails new $1 --skip-test-unit --skip-bundle --database=postgresql

  echo $1 > "$1"/.ruby-gemset
  echo ruby-2.0.0 > "$1"/.ruby-version

  cd $1

#  echo /config/database.yml >> .gitignore
#  cp config/database.yml config/database.example.yml
#  sed "s/username: "$1"/username: /g" config/database.example.yml > config/database.yml

#  add_rails_gems
   bundle
#  rails generate rspec:install

#  git init
#  git add .
#  git commit -m 'Initial commit'

  subl .;
}

alias rc='_rails_command console'
alias rd='_rails_command destroy'
alias rdb='_rails_command dbconsole'
alias rdbm='rake db:migrate db:test:clone'
alias rg='_rails_command generate'
alias rgm='_rails_command generate migration'
alias rp='_rails_command plugin'
alias ru='_rails_command runner'
alias rs='_rails_command server'
alias rsd='_rails_command server --debugger'
alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias prodlog='tail -f log/production.log'
alias rdm='rake db:migrate'
alias rdc='rake db:create'
alias rdr='rake db:rollback'
alias rds='rake db:seed'
alias rlc='rake log:clear'
alias rn='rake notes'
alias rr='rake routes'
