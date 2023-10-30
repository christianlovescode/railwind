require 'rails/generators'

module Railwind
    class TabGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "tabs/tab_component.rb", "app/components/tab_component.rb"
        copy_file "tabs/_tab_component.html.erb", "app/components/tab_component.html.erb"
        copy_file "tabs/tabs_controller.js", "app/javascript/controllers/tabs_controller.js"
      end
    end
  end