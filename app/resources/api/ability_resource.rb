# frozen_string_literal: true

class Api::AbilityResource < JSONAPI::Resource
  attributes :name, :description, :is_ultimate

  has_one :hero
end
