require 'rails/generators'

module Railwind
    class CheckboxGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "checkbox/checkbox_component.rb", "app/components/checkbox_component.rb"
        copy_file "checkbox/_checkbox_component.html.erb", "app/components/checkbox_component.html.erb"
      end
    end
  end