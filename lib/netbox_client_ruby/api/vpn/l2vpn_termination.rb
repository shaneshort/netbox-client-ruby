# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class L2VPNTermination
      include Entity

      id id: :id
      deletable true
      path 'vpn/l2vpn-terminations/:id/'
      creation_path 'vpn/l2vpn-terminations/'

    end
  end
end