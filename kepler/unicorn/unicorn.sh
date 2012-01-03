rails_root="/Users/ej/Dropbox/UCAR/catalog_ui"
unicorn="/Users/ej/.rvm/gems/ruby-1.8.7-p352/bin/unicorn"
bundle="/Users/ej/.rvm/gems/ruby-1.8.7-p352/bin/bundle"

# http://beginrescueend.com/workflow/scripting/

# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then
  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then
  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"
else
  printf "ERROR: An RVM installation was not found.\n"
fi

cd $rails_root
$bundle exec unicorn
