# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class TunnelGroup
      include Entity

      id id: :id
      deletable true
      path 'vpn/tunnel-groups/:id/'
      creation_path 'vpn/tunnel-groups/'

    end
  end
end