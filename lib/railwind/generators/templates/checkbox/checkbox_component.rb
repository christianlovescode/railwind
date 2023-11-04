# frozen_string_literal: true

class CheckboxComponent < ViewComponent::Base
    def initialize(name:, label: , description: "", checked: false, disabled: false)
        @name = name
        @label = label
        @description = description
        @checked = checked
        @disabled = disabled
      end
  end
  