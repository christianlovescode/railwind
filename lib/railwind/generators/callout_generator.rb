require 'rails/generators'

module Railwind
    class CalloutGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "callout/callout_component.rb", "app/components/callout_component.rb"
        copy_file "callout/_callout_component.html.erb", "app/components/callout_component.html.erb"
      end
    end
  end