require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class L2VPNTermination
      include Entity

      id id: :id
      deletable true
      path 'vpn/l2vpn-terminations/:id.json'
      creation_path 'vpn/l2vpn-terminations/'

    end
  end
end