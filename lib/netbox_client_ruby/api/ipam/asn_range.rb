# frozen_string_literal: true

module NetboxClientRuby
  module IPAM
    class AsnRange
      include Entity

      id id: 'id'
      deletable true
      path 'ipam/asn-ranges/:id/'
      creation_path 'ipam/asn-ranges/'

      object_fields(
        rir: proc { |raw_data| Rir.new raw_data['id'] },
        tenant: proc { |raw_data| Tenancy::Tenant.new raw_data['id'] },
        tags: proc { |raw_data| Extras::Tag.new raw_data['id'] },
      )

      def available_asns
        request_path = replace_path_variables_in 'ipam/asn-ranges/:id/available-asns/'
        response = connection.get request_path
        response.body.collect do |obj|
          a = Asn.new
          a.data = obj
          a
        end
      end
    end
  end
end