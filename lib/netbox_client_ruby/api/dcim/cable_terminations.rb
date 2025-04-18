# frozen_string_literal: true

module NetboxClientRuby
  module DCIM
    class CableTerminations
      include Entities

      path 'dcim/cable-terminations.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        CableTermination.new raw_entity['id']
      end
    end
  end
end
