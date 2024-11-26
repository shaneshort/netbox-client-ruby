require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class TunnelTermination
      include Entity

      id id: :id
      deletable true
      path 'vpn/tunnel-terminations/:id.json'
      creation_path 'vpn/tunnel-terminations/'

    end
  end
end