require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require :default, Rails.env

module Abaddon
  class Application < Rails::Application

    config.assets.precompile += [ 'buttons.js' ]

  end
end
