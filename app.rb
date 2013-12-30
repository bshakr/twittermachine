require "bundler/setup"
require 'sinatra'
require 'tweetstream'
require 'faraday'
require 'json'

require_relative 'lib/twitter_listener'

client = TwitterListener.new
puts "starting Twitter listener..."
client.follow_happiness
