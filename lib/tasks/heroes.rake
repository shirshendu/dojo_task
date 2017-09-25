# frozen_string_literal: true

namespace :heros do
  desc 'import basic hero data'
  task import_basic: :environment do
    puts 'Importing basic hero data...'
    Hero.import
    puts '...done'
  end

  desc 'import detailed hero data'
  task import_detailed: :environment do
    Hero.all.each do |hero|
      puts "Importing details for #{hero.name}..."
      hero.import
      puts '...done'
    end
  end

  desc 'import all hero data'
  task import_all: %i[import_basic import_detailed]
end
