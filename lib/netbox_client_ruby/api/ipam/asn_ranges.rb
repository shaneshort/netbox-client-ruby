require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/ipam/asn_range'

module NetboxClientRuby
  module IPAM
    class AsnRanges
      include Entities

      path 'ipam/asn-ranges.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        AsnRange.new raw_entity['id']
      end
    end
  end
end

