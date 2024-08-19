require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module VPN
    class IkeProposal
      include Entity

      id id: :id
      deletable true
      path 'vpn/ike-proposals/:id.json'
      creation_path 'vpn/ike-proposals/'

    end
  end
end