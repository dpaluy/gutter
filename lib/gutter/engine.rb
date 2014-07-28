require 'rubygems'
require 'jquery-rails'
require 'jquery-ui-rails'
require 'jquery-datatables-rails'

module Gutter
  class Engine < ::Rails::Engine
    isolate_namespace Gutter

    initializer "gutter.assets.precompile" do |app|
      app.config.assets.precompile += %w(gutter/application.css gutter/application.js)
    end
  end
end
