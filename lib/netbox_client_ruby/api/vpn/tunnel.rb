require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class Tunnel
      include Entity

      id id: :id
      deletable true
      path 'vpn/tunnels/:id.json'
      creation_path 'vpn/tunnels/'

    end
  end
end