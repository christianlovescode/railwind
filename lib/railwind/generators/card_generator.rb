require 'rails/generators'

module Railwind
    class CardGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)
  
      def create_component_file
        copy_file "card/card_component.rb", "app/components/card_component.rb"
        copy_file "card/_card_component.html.erb", "app/components/card_component.html.erb"
      end
    end
  end