# frozen_string_literal: true

module NetboxClientRuby
  module DCIM
    class PowerPortTemplate
      include Entity

      id id: :id
      deletable true
      path 'dcim/power-port-templates/:id/'
      creation_path 'dcim/power-port-templates/'
      object_fields(
        device_type: proc { |raw_data| DeviceType.new raw_data['id'] },
      )
    end
  end
end