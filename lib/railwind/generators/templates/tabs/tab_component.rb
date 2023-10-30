class TabComponent < ViewComponent::Base
    def initialize(id:, tabs:)
        @id =  id
        @tabs = tabs
    end
end
  