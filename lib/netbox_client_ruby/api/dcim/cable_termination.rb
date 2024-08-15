require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module DCIM
    class CableTermination
      include Entity

      id id: 'id'
      deletable true
      path 'dcim/cable-terminations/:id.json'
      creation_path 'dcim/cable-terminations/'
    end
  end
end