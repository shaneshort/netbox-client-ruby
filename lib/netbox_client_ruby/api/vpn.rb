# frozen_string_literal: true

module NetboxClientRuby
  module VPN
    {
      ike_policies: IkePolicies,
      ike_proposals: IkeProposals,
      ipsec_policies: IpsecPolicies,
      l2vpn_terminations: L2VPNTerminations,
      l2vpns: L2VPNs,
      tunnel_groups: TunnelGroups,
      tunnel_terminations: TunnelTerminations,
      tunnels: Tunnels
    }.each_pair do |method_name, class_name|
      define_method(method_name) { class_name.new }
      module_function(method_name)
    end

    {
      ike_policy: IkePolicy,
      ike_proposal: IkeProposal,
      ipsec_policy: IpsecPolicy,
      l2vpn_termination: L2VPNTermination,
      l2vpn: L2VPN,
      tunnel_group: TunnelGroup,
      tunnel_termination: TunnelTermination,
      tunnel: Tunnel
    }.each_pair do |method_name, class_name|
      define_method(method_name) { |id| class_name.new id }
      module_function(method_name)
    end
  end
end
