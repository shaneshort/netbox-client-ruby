require 'netbox_client_ruby/entities'
require 'netbox_client_ruby/api/vpn/ipsec_policy'

module NetboxClientRuby
  module VPN
    class IpsecPolicies
      include Entities

      path 'vpn/ipsec-policies.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        IpsecPolicy.new raw_entity['id']
      end
    end
  end
end