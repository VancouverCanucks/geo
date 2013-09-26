require 'bundler'
require 'rubygems'
require 'open-uri'
require 'yaml'

Bundler.require

APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '.'))

@config = YAML::load_file "#{APP_ROOT}/config/config.yml"

API_KEY = @config['geoservice']['apikey']
REGION_CHECK = @config['geoservice']['region']
require "#{APP_ROOT}/app.rb"

run Geo