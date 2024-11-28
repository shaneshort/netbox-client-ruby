# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class IkePolicies
      include Entities

      path 'vpn/ike-policies.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        IkePolicy.new raw_entity['id']
      end
    end
  end
end