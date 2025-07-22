# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class L2VPNTerminations
      include Entities

      path 'vpn/l2vpn-terminations/'
      data_key 'results'
      count_key 'count'
      entity_creator :entity_creator

      private

      def entity_creator(raw_entity)
        L2VPNTermination.new raw_entity['id']
      end
    end
  end
end