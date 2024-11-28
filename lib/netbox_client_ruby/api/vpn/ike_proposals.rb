# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class IkeProposals
      include Entities

      path 'vpn/ike-proposals.json'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        IkeProposals.new raw_entity['id']
      end
    end
  end
end