require 'bundler'
Bundler.require
require 'json'

path = File.expand_path "../../", __FILE__
APP_PATH = path

env = ENV["RACK_ENV"] || "development"
APP_ENV = env
