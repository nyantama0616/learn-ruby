require "notion-ruby-client"
require "dotenv"

Dotenv.load

module Config
    DATABASE_ID = ENV["DATABASE_ID"]
    Notion.configure do |config|
        config.token = ENV["API_TOKEN"]
    end
end
