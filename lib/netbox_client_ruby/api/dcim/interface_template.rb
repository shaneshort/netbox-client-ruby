# frozen_string_literal: true

module NetboxClientRuby
  module DCIM
    class InterfaceTemplate
      include Entity

      id id: :id
      deletable true
      path 'dcim/interface-templates/:id/'
      creation_path 'dcim/interface-templates/'
      object_fields(
        device_type: proc { |raw_data| DeviceType.new raw_data['id'] },
      )
    end
  end
end
