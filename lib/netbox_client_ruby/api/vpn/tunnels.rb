# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class Tunnels
      include Entities

      path 'vpn/tunnels.json'
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