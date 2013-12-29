require "bundler/setup"
require 'sinatra'
require 'tweetstream'
require 'pusher'
require 'json'

require_relative 'lib/twitter_listener'

client = TwitterListener.new
puts "starting Twitter listener..."
client.follow_happiness
