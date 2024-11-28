# frozen_string_literal: true

module NetboxClientRuby
  module IPAM
    class Asn
      include Entity

      id id: 'id'
      deletable true
      path 'ipam/asns/:id.json'
      creation_path 'ipam/asns/'

      object_fields(
        rir: proc { |raw_data| Rir.new raw_data['id'] },
        tenant: proc { |raw_data| Tenancy::Tenant.new raw_data['id'] },
        tags: proc { |raw_data| Extras::Tag.new raw_data['id'] },
        )
    end
  end
end