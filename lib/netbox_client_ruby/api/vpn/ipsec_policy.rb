require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class IpsecPolicy
      include Entity

      id id: :id
      deletable true
      path 'vpn/ipsec-policies/:id.json'
      creation_path 'vpn/ipsec-policies/'

    end
  end
end