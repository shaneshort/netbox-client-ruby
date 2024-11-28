# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class IPSECPolicy
      include Entity

      id id: :id
      deletable true
      path 'vpn/ipsec-policies/:id.json'
      creation_path 'vpn/ipsec-policies/'

    end
  end
end