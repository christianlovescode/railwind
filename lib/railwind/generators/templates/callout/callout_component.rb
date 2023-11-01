# frozen_string_literal: true

class CalloutComponent < ViewComponent::Base

    VALID_VARIANTS = ['success', 'info', 'warning', 'danger'].freeze

    def initialize(title:, description:, variant:)
      @title = title
      @description = description
      @variant = validate_variant(variant)
    end

    private

    def validate_variant(variant)
      raise ArgumentError, "Invalid variant" unless VALID_VARIANTS.include?(variant)
      variant
    end
  
  end
  