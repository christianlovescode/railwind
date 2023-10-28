class ButtonComponent < ViewComponent::Base
    def initialize(text:, type: "primary")
      @text = text
      @type = type
    end
end