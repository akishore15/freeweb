mkdir my_web_server
cd my_web_server
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'sinatra'" >> Gemfile
echo "gem 'git'" >> Gemfile
bundle install
