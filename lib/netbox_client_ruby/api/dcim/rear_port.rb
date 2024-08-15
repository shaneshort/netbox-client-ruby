require 'netbox_client_ruby/entity'
require 'netbox_client_ruby/api/dcim/device'
require 'netbox_client_ruby/api/dcim/cable'

module NetboxClientRuby
  module DCIM
    class RearPort
      include Entity

      id id: 'id'
      deletable true
      path 'dcim/rear-ports/:id.json'
      creation_path 'dcim/front-ports/'

      object_fields(
        device: proc { |raw_data| Device.new raw_data['id'] },
        cable: proc { |raw_data| Cable.new raw_data['id'] }
      )

    end
  end
end