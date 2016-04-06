ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/partial'
require 'tilt/erb'
require 'date'

require_relative 'data_mapper_setup'

require_relative 'server'
require_relative 'controller/spaces'
require_relative 'controller/user'
require_relative 'controller/session'
