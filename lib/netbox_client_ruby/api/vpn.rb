require 'netbox_client_ruby/api/vpn/ike_policies'
require 'netbox_client_ruby/api/vpn/ike_policy'
require 'netbox_client_ruby/api/vpn/ike_proposals'
require 'netbox_client_ruby/api/vpn/ike_proposal'
require 'netbox_client_ruby/api/vpn/ipsec_policies'
require 'netbox_client_ruby/api/vpn/ipsec_policy'
require 'netbox_client_ruby/api/vpn/l2vpn_terminations'
require 'netbox_client_ruby/api/vpn/l2vpn_termination'
require 'netbox_client_ruby/api/vpn/l2vpns'
require 'netbox_client_ruby/api/vpn/l2vpn'
require 'netbox_client_ruby/api/vpn/tunnel_groups'
require 'netbox_client_ruby/api/vpn/tunnel_group'
require 'netbox_client_ruby/api/vpn/tunnel_terminations'
require 'netbox_client_ruby/api/vpn/tunnel_termination'
require 'netbox_client_ruby/api/vpn/tunnels'
require 'netbox_client_ruby/api/vpn/tunnel'

require 'netbox_client_ruby/communication'

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
