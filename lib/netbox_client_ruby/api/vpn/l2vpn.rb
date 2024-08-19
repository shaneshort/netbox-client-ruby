require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class L2VPN
      include Entity

      id id: :id
      deletable true
      path 'vpn/l2vpns/:id.json'
      creation_path 'vpn/l2vpns/'

    end
  end
end