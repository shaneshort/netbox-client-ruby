# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class TunnelGroups
      include Entities

      path 'vpn/tunnel-groups/'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        TunnelGroup.new raw_entity['id']
      end
    end
  end
end