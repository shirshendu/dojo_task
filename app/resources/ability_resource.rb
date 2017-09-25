# frozen_string_literal: true

class AbilityResource < JSONAPI::Resource
  attributes :name, :description, :is_ultimate

  has_one :hero
end
