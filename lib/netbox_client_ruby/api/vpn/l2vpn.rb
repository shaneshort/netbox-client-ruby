# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    class L2VPN
      include Entity

      id id: :id
      deletable true
      path 'vpn/l2vpns/:id/'
      creation_path 'vpn/l2vpns/'

    end
  end
end