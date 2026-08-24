# frozen_string_literal: true

module NetboxClientRuby
  module DCIM

    class InterfaceTemplates
      include Entities

      path 'dcim/interface-templates/'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        InterfaceTemplate.new raw_entity['id']
      end
    end
  end
end
