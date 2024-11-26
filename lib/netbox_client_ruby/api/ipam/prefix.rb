# frozen_string_literal: true

module NetboxClientRuby
  module IPAM
    class Prefix
      include Entity

      id id: :id
      deletable true
      path 'ipam/prefixes/:id.json'
      creation_path 'ipam/prefixes/'
      object_fields(
        site: proc { |raw_data| DCIM::Site.new raw_data['id'] },
        vrf: proc { |raw_data| Vrf.new raw_data['id'] },
        tenant: proc { |raw_data| Tenancy::Tenant.new raw_data['id'] },
        vlan: proc { |raw_data| Vlan.new raw_data['id'] },
        status: proc { |raw_data| PrefixStatus.new raw_data },
        role: proc { |raw_data| Role.new raw_data['id'] },
        prefix: proc { |raw_data| IPAddress.parse raw_data }
      )
      readonly_fields :display_name

      def available_prefixes(prefix_length = 24)
        request_path = replace_path_variables_in 'ipam/prefixes/:id/available-prefixes/'
        response = connection.get request_path, { prefix_length: prefix_length }
        response.body.collect do |object|
          prefix = Prefix.new(object['id'])
          prefix.data = object
          prefix
        end
      end

      def next_available_prefix(prefix_length: 24, count: 1)
        request_path = replace_path_variables_in 'ipam/prefixes/:id/available-prefixes/'
        prefixes = []
        count.times do
          response = connection.post request_path, { prefix_length: prefix_length }
          prefix = Prefix.new(response.body['id'])
          prefix.data = response.body
          prefixes << prefix
        end

        prefixes.count == 1 ? prefixes.first : prefixes
      end
    end

    class PrefixStatus
      attr_reader :value, :label

      def initialize(raw_data)
        @value = raw_data['value']
        @label = raw_data['label']
      end
    end
  end
end
