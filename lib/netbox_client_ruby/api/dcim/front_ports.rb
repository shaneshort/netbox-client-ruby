require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/dcim/front_port'

module NetboxClientRuby
  module DCIM
    class FrontPorts
      include Entities

      path 'dcim/front-ports.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        FrontPort.new raw_entity['id']
      end
    end
  end
end