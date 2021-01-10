source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'activeadmin'
gem 'active_storage_drag_and_drop'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'carrierwave'
gem 'devise'
gem 'fog-aws'
gem 'mini_magick'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.0'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rspec-rails'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'sqlite3', '~> 1.4'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
