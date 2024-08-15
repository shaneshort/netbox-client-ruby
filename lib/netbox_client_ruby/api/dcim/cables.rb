require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/dcim/cable'

module NetboxClientRuby
  module DCIM
    class Cables
      include Entities

      path 'dcim/cables.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        Cable.new raw_entity['id']
      end
    end
  end
end