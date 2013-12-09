source 'https://rubygems.org'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'rails', '3.2.13'

##### Authentication Dependencies
gem 'devise'

##### Database Dependencies
group :production do
  gem 'mysql2'
end

group :development, :test do
  # sqlite3 syntax 'CREATE TEMPORARY TABLE ~~' dosent work on cygwin environment.
  # So I use MySQL, instead of sqlite3.
  # In rails this syntax used by change_column method in migration script.
  gem 'mysql2'
end

##### UI Dependencies
gem 'jquery-rails'

gem 'haml-rails'
gem 'erb2haml'

gem 'less-rails'
gem 'twitter-bootstrap-rails'

gem 'jquery-ui-rails'


##### Testing Dependencies
# 'rspec-rails' must written in root context to generated specs while executing rails command.
gem 'rspec-rails'

# Testing dependencies
group :test do
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'ci_reporter'
  gem 'factory_girl_rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # Normal therubyracer dosent work on windows environment.
  if RUBY_PLATFORM =~ /mingw|cygwin/
    gem 'therubyracer', :git => 'https://github.com/takewo/therubyracer_windows.git'
  else
    gem 'therubyracer', :platforms => :ruby
  end
  gem 'uglifier', '>= 1.0.3'
end


#group :metrics do
#  gem 'ZenTest', '= 4.8.3'
#  gem 'roodi', '~> 2.2.0'
#  gem 'reek', '~> 1.2.13'
#  gem 'flay'
#  gem 'flog'
#end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
