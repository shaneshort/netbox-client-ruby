require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/ipam/asn'

module NetboxClientRuby
  module IPAM
    class Asns
      include Entities

      path 'ipam/asns.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        Asn.new raw_entity['id']
      end
    end
  end
end