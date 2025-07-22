# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class IPSECPolicies
      include Entities

      path 'vpn/ipsec-policies/'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        IPSECPolicy.new raw_entity['id']
      end
    end
  end
end