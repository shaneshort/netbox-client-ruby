# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class TunnelTerminations
      include Entities

      path 'vpn/tunnel-terminations/'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        TunnelTermination.new raw_entity['id']
      end
    end
  end
end