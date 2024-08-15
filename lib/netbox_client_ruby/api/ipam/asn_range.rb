require 'netbox_client_ruby/entity'
require 'netbox_client_ruby/api/tenancy/tenant'
require 'netbox_client_ruby/api/extras/tag'

module NetboxClientRuby
  module IPAM
    class AsnRange
      include Entity

      id id: 'id'
      deletable true
      path 'ipam/asn-ranges/:id.json'
      creation_path 'ipam/asn-ranges/'

      object_fields(
        rir: proc { |raw_data| Rir.new raw_data['id'] },
        tenant: proc { |raw_data| Tenancy::Tenant.new raw_data['id'] },
        tags: proc { |raw_data| Extras::Tag.new raw_data['id'] },
      )
    end
  end
end