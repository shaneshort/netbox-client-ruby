require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module DCIM
    class Cable
      include Entity

      id id: 'id'
      deletable true
      path 'dcim/cables/:id.json'
      creation_path 'dcim/cables/'
    end
  end
end