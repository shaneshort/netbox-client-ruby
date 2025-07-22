# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class TunnelTermination
      include Entity

      id id: :id
      deletable true
      path 'vpn/tunnel-terminations/:id/'
      creation_path 'vpn/tunnel-terminations/'

    end
  end
end