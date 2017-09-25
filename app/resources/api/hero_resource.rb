# frozen_string_literal: true

class Api::HeroResource < JSONAPI::Resource
  attributes :name, :real_name, :health, :armour, :shield

  has_many :abilities
end
