require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class TunnelGroup
      include Entity

      id id: :id
      deletable true
      path 'vpn/tunnel-groups/:id.json'
      creation_path 'vpn/tunnel-groups/'

    end
  end
end