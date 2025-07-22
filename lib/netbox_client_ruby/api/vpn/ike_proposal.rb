# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class IKEProposal
      include Entity

      id id: :id
      deletable true
      path 'vpn/ike-proposals/:id/'
      creation_path 'vpn/ike-proposals/'

    end
  end
end