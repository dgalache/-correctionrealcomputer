
          require 'capybara/rspec'
          require 'capybara/poltergeist'

          Capybara.register_driver :poltergeist do |app|
            Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 5000)
          end

          Capybara.javascript_driver = :poltergeist


        factory_girl.rb

          RSpec.configure do |config|
            config.include FactoryGirl::Syntax::Methods
          end

        database_cleaner.db

          RSpec.configure do |config|
            config.before(:suite) do
              DatabaseCleaner.clean_with(:truncation)
            end

            config.before(:each) do
              DatabaseCleaner.strategy = :transaction
            end

            config.before(:each, :js => true) do
              DatabaseCleaner.strategy = :truncation
            end

            config.before(:each) do
              DatabaseCleaner.start
            end

            config.append_after(:each) do
              DatabaseCleaner.clean
            end
          end

