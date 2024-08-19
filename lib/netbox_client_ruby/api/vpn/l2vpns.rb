require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/vpn/l2vpn'

module NetboxClientRuby
  module VPN
    class L2VPNs
      include Entities

      path 'vpn/l2vpns.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        L2VPN.new raw_entity['id']
      end
    end
  end
end