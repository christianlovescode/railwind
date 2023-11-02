require 'rails/generators'

module Railwind
    class ProgressGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "progress/progress_component.rb", "app/components/progress_component.rb"
        copy_file "progress/_progress_component.html.erb", "app/components/progress_component.html.erb"
      end
    end
  end