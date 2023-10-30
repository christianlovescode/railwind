class ButtonComponent < ViewComponent::Base
    def initialize(text:, variant: "primary", type: "button")
      @text = text
      @variant = variant
      @type = type
    end
end