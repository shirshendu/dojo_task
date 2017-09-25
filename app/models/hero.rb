# frozen_string_literal: true

class Hero < ApplicationRecord
  include HTTParty

  base_uri 'https://overwatch-api.net/api/v1/hero'

  has_many :abilities

  def self.import
    page = 1
    loop do
      next_page = import_page(page)
      break unless next_page.present?
      page += 1
    end
  end

  def self.import_page(page)
    heroes_page = get(
      '/', query: { page: page }, headers: { 'Accept' => 'application/json' }
    ).parsed_response
    heroes_page['data'].each do |hero_attrs|
      hero = find_or_initialize_by id: hero_attrs['id']
      hero.assign_attributes hero_attrs.slice(*column_names)
      hero.save!
    end
    heroes_page['next']
  end

  def import
    hero_details = self.class.get(
      "/#{id}", headers: { 'Accept' => 'application/json' }
    ).parsed_response
    hero_details['abilities'].each do |ability_attrs|
      ability = Ability.find_or_initialize_by id: ability_attrs['id']
      ability.assign_attributes ability_attrs.slice(*Ability.column_names)
      ability.hero = self
      ability.save!
    end
  end
end
