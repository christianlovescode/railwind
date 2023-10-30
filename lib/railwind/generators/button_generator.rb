require 'rails/generators'

module Railwind
    class ButtonGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "button/button_component.rb", "app/components/button_component.rb"
        copy_file "button/_button_component.html.erb", "app/components/button_component.html.erb"
      end
    end
  end