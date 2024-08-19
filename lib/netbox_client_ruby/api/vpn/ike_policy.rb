require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class IkePolicy
      include Entity

      id id: :id
      deletable true
      path 'vpn/ike-policies/:id.json'
      creation_path 'vpn/ike-policies/'

    end
  end
end