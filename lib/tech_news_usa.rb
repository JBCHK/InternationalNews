require 'pry'
require 'httparty'
require 'dotenv/load'
require 'iso_country_codes'

require_relative "tech_news_usa/version"
require_relative "tech_news_usa/cli"
require_relative "tech_news_usa/api"
require_relative "tech_news_usa/article"

module TechNewsUsa
class Error < StandardError; end
# Your code goes here...
end
