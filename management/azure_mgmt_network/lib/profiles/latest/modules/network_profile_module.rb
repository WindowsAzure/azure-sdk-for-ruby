# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Network::Profiles::Latest
  module Mgmt
    ApplicationGateways = Azure::Network::Mgmt::V2019_02_01::ApplicationGateways
    ApplicationSecurityGroups = Azure::Network::Mgmt::V2019_02_01::ApplicationSecurityGroups
    AvailableDelegations = Azure::Network::Mgmt::V2019_02_01::AvailableDelegations
    AvailableResourceGroupDelegations = Azure::Network::Mgmt::V2019_02_01::AvailableResourceGroupDelegations
    AzureFirewalls = Azure::Network::Mgmt::V2019_02_01::AzureFirewalls
    AzureFirewallFqdnTags = Azure::Network::Mgmt::V2019_02_01::AzureFirewallFqdnTags
    DdosCustomPolicies = Azure::Network::Mgmt::V2019_02_01::DdosCustomPolicies
    DdosProtectionPlans = Azure::Network::Mgmt::V2019_02_01::DdosProtectionPlans
    AvailableEndpointServices = Azure::Network::Mgmt::V2019_02_01::AvailableEndpointServices
    ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCircuitConnections
    PeerExpressRouteCircuitConnections = Azure::Network::Mgmt::V2019_02_01::PeerExpressRouteCircuitConnections
    ExpressRouteCircuits = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::Network::Mgmt::V2019_02_01::ExpressRouteServiceProviders
    ExpressRouteCrossConnections = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCrossConnections
    ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2019_02_01::ExpressRouteCrossConnectionPeerings
    ExpressRouteGateways = Azure::Network::Mgmt::V2019_02_01::ExpressRouteGateways
    ExpressRouteConnections = Azure::Network::Mgmt::V2019_02_01::ExpressRouteConnections
    ExpressRoutePortsLocations = Azure::Network::Mgmt::V2019_02_01::ExpressRoutePortsLocations
    ExpressRoutePorts = Azure::Network::Mgmt::V2019_02_01::ExpressRoutePorts
    ExpressRouteLinks = Azure::Network::Mgmt::V2019_02_01::ExpressRouteLinks
    InterfaceEndpoints = Azure::Network::Mgmt::V2019_02_01::InterfaceEndpoints
    LoadBalancers = Azure::Network::Mgmt::V2019_02_01::LoadBalancers
    LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2019_02_01::LoadBalancerBackendAddressPools
    LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2019_02_01::LoadBalancerFrontendIPConfigurations
    InboundNatRules = Azure::Network::Mgmt::V2019_02_01::InboundNatRules
    LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2019_02_01::LoadBalancerLoadBalancingRules
    LoadBalancerOutboundRules = Azure::Network::Mgmt::V2019_02_01::LoadBalancerOutboundRules
    LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2019_02_01::LoadBalancerNetworkInterfaces
    LoadBalancerProbes = Azure::Network::Mgmt::V2019_02_01::LoadBalancerProbes
    NatGateways = Azure::Network::Mgmt::V2019_02_01::NatGateways
    NetworkInterfaces = Azure::Network::Mgmt::V2019_02_01::NetworkInterfaces
    NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2019_02_01::NetworkInterfaceIPConfigurations
    NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2019_02_01::NetworkInterfaceLoadBalancers
    NetworkInterfaceTapConfigurations = Azure::Network::Mgmt::V2019_02_01::NetworkInterfaceTapConfigurations
    NetworkProfiles = Azure::Network::Mgmt::V2019_02_01::NetworkProfiles
    NetworkSecurityGroups = Azure::Network::Mgmt::V2019_02_01::NetworkSecurityGroups
    SecurityRules = Azure::Network::Mgmt::V2019_02_01::SecurityRules
    DefaultSecurityRules = Azure::Network::Mgmt::V2019_02_01::DefaultSecurityRules
    NetworkWatchers = Azure::Network::Mgmt::V2019_02_01::NetworkWatchers
    PacketCaptures = Azure::Network::Mgmt::V2019_02_01::PacketCaptures
    ConnectionMonitors = Azure::Network::Mgmt::V2019_02_01::ConnectionMonitors
    Operations = Azure::Network::Mgmt::V2019_02_01::Operations
    PublicIPAddresses = Azure::Network::Mgmt::V2019_02_01::PublicIPAddresses
    PublicIPPrefixes = Azure::Network::Mgmt::V2019_02_01::PublicIPPrefixes
    RouteFilters = Azure::Network::Mgmt::V2019_02_01::RouteFilters
    RouteFilterRules = Azure::Network::Mgmt::V2019_02_01::RouteFilterRules
    RouteTables = Azure::Network::Mgmt::V2019_02_01::RouteTables
    Routes = Azure::Network::Mgmt::V2019_02_01::Routes
    BgpServiceCommunities = Azure::Network::Mgmt::V2019_02_01::BgpServiceCommunities
    ServiceEndpointPolicies = Azure::Network::Mgmt::V2019_02_01::ServiceEndpointPolicies
    ServiceEndpointPolicyDefinitions = Azure::Network::Mgmt::V2019_02_01::ServiceEndpointPolicyDefinitions
    Usages = Azure::Network::Mgmt::V2019_02_01::Usages
    VirtualNetworks = Azure::Network::Mgmt::V2019_02_01::VirtualNetworks
    Subnets = Azure::Network::Mgmt::V2019_02_01::Subnets
    VirtualNetworkPeerings = Azure::Network::Mgmt::V2019_02_01::VirtualNetworkPeerings
    VirtualNetworkGateways = Azure::Network::Mgmt::V2019_02_01::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2019_02_01::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::Network::Mgmt::V2019_02_01::LocalNetworkGateways
    VirtualNetworkTaps = Azure::Network::Mgmt::V2019_02_01::VirtualNetworkTaps
    VirtualWans = Azure::Network::Mgmt::V2019_02_01::VirtualWans
    VpnSites = Azure::Network::Mgmt::V2019_02_01::VpnSites
    VpnSitesConfiguration = Azure::Network::Mgmt::V2019_02_01::VpnSitesConfiguration
    VirtualHubs = Azure::Network::Mgmt::V2019_02_01::VirtualHubs
    HubVirtualNetworkConnections = Azure::Network::Mgmt::V2019_02_01::HubVirtualNetworkConnections
    VpnGateways = Azure::Network::Mgmt::V2019_02_01::VpnGateways
    VpnConnections = Azure::Network::Mgmt::V2019_02_01::VpnConnections
    P2sVpnServerConfigurations = Azure::Network::Mgmt::V2019_02_01::P2sVpnServerConfigurations
    P2sVpnGateways = Azure::Network::Mgmt::V2019_02_01::P2sVpnGateways
    WebApplicationFirewallPolicies = Azure::Network::Mgmt::V2019_02_01::WebApplicationFirewallPolicies

    module Models
      EffectiveRouteListResult = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteListResult
      ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProbeHealthResponseMatch
      LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerLoadBalancingRuleListResult
      LoadBalancerOutboundRuleListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerOutboundRuleListResult
      SubResource = Azure::Network::Mgmt::V2019_02_01::Models::SubResource
      LoadBalancerProbeListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerProbeListResult
      ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      ExpressRouteCircuitReference = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitReference
      ListVirtualWANsResult = Azure::Network::Mgmt::V2019_02_01::Models::ListVirtualWANsResult
      RouteFilterRuleListResult = Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterRuleListResult
      DeviceProperties = Azure::Network::Mgmt::V2019_02_01::Models::DeviceProperties
      RouteFilterListResult = Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterListResult
      VirtualNetworkTapListResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkTapListResult
      ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionListResult
      ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPropertiesFormat
      ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionPeeringList
      GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2019_02_01::Models::GetVpnSitesConfigurationRequest
      VirtualHubId = Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubId
      PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressDnsSettings
      ExpressRouteCircuitPeeringId = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringId
      IpTag = Azure::Network::Mgmt::V2019_02_01::Models::IpTag
      ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
      LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2019_02_01::Models::LocalNetworkGatewayListResult
      ExpressRouteGatewayPropertiesAutoScaleConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
      VirtualHubRoute = Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubRoute
      ListP2SVpnGatewaysResult = Azure::Network::Mgmt::V2019_02_01::Models::ListP2SVpnGatewaysResult
      VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionListResult
      P2SVpnProfileParameters = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnProfileParameters
      ListVirtualHubsResult = Azure::Network::Mgmt::V2019_02_01::Models::ListVirtualHubsResult
      ExpressRouteGatewayList = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayList
      GatewayRouteListResult = Azure::Network::Mgmt::V2019_02_01::Models::GatewayRouteListResult
      ExpressRouteConnectionList = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnectionList
      VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayListResult
      ExpressRoutePortsLocationBandwidths = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocationBandwidths
      VpnClientParameters = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientParameters
      PublicIPPrefixListResult = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixListResult
      ListVpnGatewaysResult = Azure::Network::Mgmt::V2019_02_01::Models::ListVpnGatewaysResult
      ExpressRoutePortsLocationListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocationListResult
      ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthHttpSettings
      VpnProfileResponse = Azure::Network::Mgmt::V2019_02_01::Models::VpnProfileResponse
      ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthPool
      ExpressRouteLinkListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkListResult
      ApplicationGatewaySku = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySku
      ReferencedPublicIpAddress = Azure::Network::Mgmt::V2019_02_01::Models::ReferencedPublicIpAddress
      GatewayRoute = Azure::Network::Mgmt::V2019_02_01::Models::GatewayRoute
      ExpressRoutePortListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortListResult
      BgpSettings = Azure::Network::Mgmt::V2019_02_01::Models::BgpSettings
      InterfaceEndpointListResult = Azure::Network::Mgmt::V2019_02_01::Models::InterfaceEndpointListResult
      IpsecPolicy = Azure::Network::Mgmt::V2019_02_01::Models::IpsecPolicy
      LoadBalancerSku = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerSku
      ApplicationGatewayCustomError = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCustomError
      PublicIPPrefixSku = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixSku
      VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySku
      PublicIPAddressListResult = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressListResult
      PrepareNetworkPoliciesRequest = Azure::Network::Mgmt::V2019_02_01::Models::PrepareNetworkPoliciesRequest
      OperationListResult = Azure::Network::Mgmt::V2019_02_01::Models::OperationListResult
      ApplicationGatewayHeaderConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayHeaderConfiguration
      Operation = Azure::Network::Mgmt::V2019_02_01::Models::Operation
      ApplicationGatewayRewriteRule = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRule
      OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2019_02_01::Models::OperationPropertiesFormatServiceSpecification
      VirtualWanSecurityProvider = Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProvider
      LoadBalancerListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerListResult
      ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      InboundNatRuleListResult = Azure::Network::Mgmt::V2019_02_01::Models::InboundNatRuleListResult
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerBackendAddressPoolListResult
      ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Network::Mgmt::V2019_02_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerFrontendIPConfigurationListResult
      VirtualNetworkUsage = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkUsage
      ApplicationGatewayListResult = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayListResult
      ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRule
      Dimension = Azure::Network::Mgmt::V2019_02_01::Models::Dimension
      VirtualNetworkUsageName = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkUsageName
      Availability = Azure::Network::Mgmt::V2019_02_01::Models::Availability
      IPAddressAvailabilityResult = Azure::Network::Mgmt::V2019_02_01::Models::IPAddressAvailabilityResult
      LogSpecification = Azure::Network::Mgmt::V2019_02_01::Models::LogSpecification
      ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      NetworkInterfaceListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceListResult
      ErrorDetails = Azure::Network::Mgmt::V2019_02_01::Models::ErrorDetails
      NatGatewaySku = Azure::Network::Mgmt::V2019_02_01::Models::NatGatewaySku
      TagsObject = Azure::Network::Mgmt::V2019_02_01::Models::TagsObject
      MetricSpecification = Azure::Network::Mgmt::V2019_02_01::Models::MetricSpecification
      AvailableDelegation = Azure::Network::Mgmt::V2019_02_01::Models::AvailableDelegation
      NatGatewayListResult = Azure::Network::Mgmt::V2019_02_01::Models::NatGatewayListResult
      VirtualWanSecurityProviders = Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProviders
      AzureAsyncOperationResult = Azure::Network::Mgmt::V2019_02_01::Models::AzureAsyncOperationResult
      AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleProtocol
      NetworkInterfaceTapConfigurationListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceTapConfigurationListResult
      DhcpOptions = Azure::Network::Mgmt::V2019_02_01::Models::DhcpOptions
      NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceIPConfigurationListResult
      AzureFirewallNatRule = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRule
      NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceLoadBalancerListResult
      AzureFirewallNetworkRule = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRule
      EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroupAssociation
      ListP2SVpnServerConfigurationsResult = Azure::Network::Mgmt::V2019_02_01::Models::ListP2SVpnServerConfigurationsResult
      EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityRule
      AddressSpace = Azure::Network::Mgmt::V2019_02_01::Models::AddressSpace
      EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroup
      DnsNameAvailabilityResult = Azure::Network::Mgmt::V2019_02_01::Models::DnsNameAvailabilityResult
      EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroupListResult
      UsagesListResult = Azure::Network::Mgmt::V2019_02_01::Models::UsagesListResult
      EffectiveRoute = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRoute
      ApplicationGatewayOnDemandProbe = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayOnDemandProbe
      DdosProtectionPlanListResult = Azure::Network::Mgmt::V2019_02_01::Models::DdosProtectionPlanListResult
      WebApplicationFirewallPolicyListResult = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicyListResult
      EndpointServicesListResult = Azure::Network::Mgmt::V2019_02_01::Models::EndpointServicesListResult
      WebApplicationFirewallCustomRule = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallCustomRule
      AuthorizationListResult = Azure::Network::Mgmt::V2019_02_01::Models::AuthorizationListResult
      ContainerNetworkInterfaceIpConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterfaceIpConfiguration
      ServiceEndpointPolicyListResult = Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyListResult
      MatchCondition = Azure::Network::Mgmt::V2019_02_01::Models::MatchCondition
      ExpressRouteConnectionId = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnectionId
      MatchVariable = Azure::Network::Mgmt::V2019_02_01::Models::MatchVariable
      BgpServiceCommunityListResult = Azure::Network::Mgmt::V2019_02_01::Models::BgpServiceCommunityListResult
      NetworkProfileListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkProfileListResult
      BGPCommunity = Azure::Network::Mgmt::V2019_02_01::Models::BGPCommunity
      SecurityRuleListResult = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleListResult
      ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringListResult
      NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroupListResult
      PeerExpressRouteCircuitConnectionListResult = Azure::Network::Mgmt::V2019_02_01::Models::PeerExpressRouteCircuitConnectionListResult
      ErrorResponse = Azure::Network::Mgmt::V2019_02_01::Models::ErrorResponse
      ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitServiceProviderProperties
      PolicySettings = Azure::Network::Mgmt::V2019_02_01::Models::PolicySettings
      ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitArpTable
      NetworkWatcherListResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkWatcherListResult
      ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitRoutesTable
      TopologyParameters = Azure::Network::Mgmt::V2019_02_01::Models::TopologyParameters
      ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitRoutesTableSummary
      TopologyAssociation = Azure::Network::Mgmt::V2019_02_01::Models::TopologyAssociation
      ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitListResult
      TopologyResource = Azure::Network::Mgmt::V2019_02_01::Models::TopologyResource
      RouteTableListResult = Azure::Network::Mgmt::V2019_02_01::Models::RouteTableListResult
      Topology = Azure::Network::Mgmt::V2019_02_01::Models::Topology
      ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      VerificationIPFlowParameters = Azure::Network::Mgmt::V2019_02_01::Models::VerificationIPFlowParameters
      NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceDnsSettings
      VerificationIPFlowResult = Azure::Network::Mgmt::V2019_02_01::Models::VerificationIPFlowResult
      VpnDeviceScriptParameters = Azure::Network::Mgmt::V2019_02_01::Models::VpnDeviceScriptParameters
      NextHopParameters = Azure::Network::Mgmt::V2019_02_01::Models::NextHopParameters
      PublicIPAddressSku = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressSku
      NextHopResult = Azure::Network::Mgmt::V2019_02_01::Models::NextHopResult
      VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkConnectionGatewayReference
      SecurityGroupViewParameters = Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupViewParameters
      ConnectionResetSharedKey = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionResetSharedKey
      NetworkInterfaceAssociation = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceAssociation
      TunnelConnectionHealth = Azure::Network::Mgmt::V2019_02_01::Models::TunnelConnectionHealth
      SubnetAssociation = Azure::Network::Mgmt::V2019_02_01::Models::SubnetAssociation
      ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendAddress
      SecurityRuleAssociations = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleAssociations
      ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthServer
      SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupNetworkInterface
      ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealth
      SecurityGroupViewResult = Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupViewResult
      BgpPeerStatus = Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerStatus
      PacketCaptureStorageLocation = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureStorageLocation
      ListVpnConnectionsResult = Azure::Network::Mgmt::V2019_02_01::Models::ListVpnConnectionsResult
      PacketCaptureFilter = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureFilter
      VpnSiteId = Azure::Network::Mgmt::V2019_02_01::Models::VpnSiteId
      PacketCaptureParameters = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureParameters
      ApplicationGatewayRewriteRuleActionSet = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleActionSet
      PacketCapture = Azure::Network::Mgmt::V2019_02_01::Models::PacketCapture
      VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkListUsageResult
      PacketCaptureResult = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureResult
      ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAutoscaleConfiguration
      PacketCaptureListResult = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureListResult
      ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRuleGroup
      PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureQueryStatusResult
      VirtualNetworkListResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkListResult
      TroubleshootingParameters = Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingParameters
      Error = Azure::Network::Mgmt::V2019_02_01::Models::Error
      QueryTroubleshootingParameters = Azure::Network::Mgmt::V2019_02_01::Models::QueryTroubleshootingParameters
      AvailableDelegationsResult = Azure::Network::Mgmt::V2019_02_01::Models::AvailableDelegationsResult
      TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingRecommendedActions
      AzureFirewallApplicationRule = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRule
      TroubleshootingDetails = Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingDetails
      VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeeringListResult
      TroubleshootingResult = Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingResult
      AzureFirewallListResult = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallListResult
      RetentionPolicyParameters = Azure::Network::Mgmt::V2019_02_01::Models::RetentionPolicyParameters
      ProtocolCustomSettingsFormat = Azure::Network::Mgmt::V2019_02_01::Models::ProtocolCustomSettingsFormat
      FlowLogFormatParameters = Azure::Network::Mgmt::V2019_02_01::Models::FlowLogFormatParameters
      DdosProtectionPlan = Azure::Network::Mgmt::V2019_02_01::Models::DdosProtectionPlan
      FlowLogStatusParameters = Azure::Network::Mgmt::V2019_02_01::Models::FlowLogStatusParameters
      UsageName = Azure::Network::Mgmt::V2019_02_01::Models::UsageName
      TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2019_02_01::Models::TrafficAnalyticsConfigurationProperties
      ExpressRouteCircuitStats = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitStats
      TrafficAnalyticsProperties = Azure::Network::Mgmt::V2019_02_01::Models::TrafficAnalyticsProperties
      VpnClientConnectionHealth = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientConnectionHealth
      FlowLogInformation = Azure::Network::Mgmt::V2019_02_01::Models::FlowLogInformation
      ExpressRouteCircuitConnectionListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitConnectionListResult
      ConnectivitySource = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivitySource
      RouteListResult = Azure::Network::Mgmt::V2019_02_01::Models::RouteListResult
      ConnectivityDestination = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityDestination
      ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsRoutesTableListResult
      HTTPHeader = Azure::Network::Mgmt::V2019_02_01::Models::HTTPHeader
      ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      HTTPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::HTTPConfiguration
      EndpointService = Azure::Network::Mgmt::V2019_02_01::Models::EndpointService
      ProtocolConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ProtocolConfiguration
      VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayListConnectionsResult
      ConnectivityParameters = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityParameters
      VpnClientIPsecParameters = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientIPsecParameters
      ConnectivityIssue = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityIssue
      BgpPeerStatusListResult = Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerStatusListResult
      ConnectivityHop = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityHop
      ApplicationGatewayBackendHealthOnDemand = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthOnDemand
      ConnectivityInformation = Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityInformation
      VpnClientConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientConfiguration
      AzureReachabilityReportLocation = Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportLocation
      ApplicationGatewayRewriteRuleCondition = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleCondition
      AzureReachabilityReportParameters = Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportParameters
      ApplicationGatewayFirewallExclusion = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallExclusion
      AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportLatencyInfo
      ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      AzureReachabilityReportItem = Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportItem
      ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationSecurityGroupListResult
      AzureReachabilityReport = Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReport
      AzureFirewallNatRCAction = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRCAction
      AvailableProvidersListParameters = Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListParameters
      AzureFirewallFqdnTagListResult = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallFqdnTagListResult
      AvailableProvidersListCity = Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListCity
      Usage = Azure::Network::Mgmt::V2019_02_01::Models::Usage
      AvailableProvidersListState = Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListState
      ServiceEndpointPolicyDefinitionListResult = Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyDefinitionListResult
      AvailableProvidersListCountry = Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListCountry
      ExpressRouteCircuitSku = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSku
      AvailableProvidersList = Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersList
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      ConnectionMonitorSource = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorSource
      ListVpnSitesResult = Azure::Network::Mgmt::V2019_02_01::Models::ListVpnSitesResult
      ConnectionMonitorDestination = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorDestination
      VirtualHubRouteTable = Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubRouteTable
      ConnectionMonitorParameters = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorParameters
      ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicy
      ConnectionMonitor = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitor
      NetworkIntentPolicyConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::NetworkIntentPolicyConfiguration
      ConnectionMonitorResult = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorResult
      Resource = Azure::Network::Mgmt::V2019_02_01::Models::Resource
      ConnectionMonitorListResult = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorListResult
      SubnetListResult = Azure::Network::Mgmt::V2019_02_01::Models::SubnetListResult
      ConnectionStateSnapshot = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionStateSnapshot
      ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringConfig
      ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorQueryResult
      ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsArpTableListResult
      NetworkConfigurationDiagnosticProfile = Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticProfile
      DdosSettings = Azure::Network::Mgmt::V2019_02_01::Models::DdosSettings
      NetworkConfigurationDiagnosticParameters = Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticParameters
      ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2019_02_01::Models::ListHubVirtualNetworkConnectionsResult
      MatchedRule = Azure::Network::Mgmt::V2019_02_01::Models::MatchedRule
      AzureFirewallRCAction = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallRCAction
      NetworkSecurityRulesEvaluationResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityRulesEvaluationResult
      Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2019_02_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      EvaluatedNetworkSecurityGroup = Azure::Network::Mgmt::V2019_02_01::Models::EvaluatedNetworkSecurityGroup
      ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayConnectionDraining
      NetworkSecurityGroupResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroupResult
      NetworkConfigurationDiagnosticResult = Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticResult
      ManagedServiceIdentity = Azure::Network::Mgmt::V2019_02_01::Models::ManagedServiceIdentity
      NetworkConfigurationDiagnosticResponse = Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticResponse
      ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProviderListResult
      OperationDisplay = Azure::Network::Mgmt::V2019_02_01::Models::OperationDisplay
      NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceTapConfiguration
      ApplicationSecurityGroup = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationSecurityGroup
      SecurityRule = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRule
      InterfaceEndpoint = Azure::Network::Mgmt::V2019_02_01::Models::InterfaceEndpoint
      NetworkInterface = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroup
      Route = Azure::Network::Mgmt::V2019_02_01::Models::Route
      RouteTable = Azure::Network::Mgmt::V2019_02_01::Models::RouteTable
      ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyDefinition
      ServiceEndpointPolicy = Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicy
      PublicIPAddress = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddress
      IPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::IPConfiguration
      IPConfigurationProfile = Azure::Network::Mgmt::V2019_02_01::Models::IPConfigurationProfile
      ResourceNavigationLink = Azure::Network::Mgmt::V2019_02_01::Models::ResourceNavigationLink
      ServiceAssociationLink = Azure::Network::Mgmt::V2019_02_01::Models::ServiceAssociationLink
      Delegation = Azure::Network::Mgmt::V2019_02_01::Models::Delegation
      Subnet = Azure::Network::Mgmt::V2019_02_01::Models::Subnet
      FrontendIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::FrontendIPConfiguration
      VirtualNetworkTap = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkTap
      BackendAddressPool = Azure::Network::Mgmt::V2019_02_01::Models::BackendAddressPool
      InboundNatRule = Azure::Network::Mgmt::V2019_02_01::Models::InboundNatRule
      NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewayTrustedRootCertificate = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayTrustedRootCertificate
      ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayRewriteRuleSet = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleSet
      ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRedirectConfiguration
      ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGateway
      ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRuleSet
      ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableSslOptions
      ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPredefinedPolicy
      AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallIPConfiguration
      AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleCollection
      AzureFirewallNatRuleCollection = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRuleCollection
      AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRuleCollection
      AzureFirewall = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewall
      AzureFirewallFqdnTag = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallFqdnTag
      DdosCustomPolicy = Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicy
      EndpointServiceResult = Azure::Network::Mgmt::V2019_02_01::Models::EndpointServiceResult
      ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitAuthorization
      RouteFilterRule = Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterRule
      ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitConnection
      PeerExpressRouteCircuitConnection = Azure::Network::Mgmt::V2019_02_01::Models::PeerExpressRouteCircuitConnection
      ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeering
      RouteFilter = Azure::Network::Mgmt::V2019_02_01::Models::RouteFilter
      ExpressRouteCircuit = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProvider
      ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionPeering
      ExpressRouteCrossConnection = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnection
      ExpressRouteConnection = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnection
      ExpressRouteGateway = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGateway
      ExpressRoutePortsLocation = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocation
      ExpressRouteLink = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLink
      ExpressRoutePort = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePort
      LoadBalancingRule = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancingRule
      Probe = Azure::Network::Mgmt::V2019_02_01::Models::Probe
      InboundNatPool = Azure::Network::Mgmt::V2019_02_01::Models::InboundNatPool
      OutboundRule = Azure::Network::Mgmt::V2019_02_01::Models::OutboundRule
      LoadBalancer = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancer
      NatGateway = Azure::Network::Mgmt::V2019_02_01::Models::NatGateway
      ContainerNetworkInterfaceConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterfaceConfiguration
      Container = Azure::Network::Mgmt::V2019_02_01::Models::Container
      ContainerNetworkInterface = Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterface
      NetworkProfile = Azure::Network::Mgmt::V2019_02_01::Models::NetworkProfile
      NetworkWatcher = Azure::Network::Mgmt::V2019_02_01::Models::NetworkWatcher
      PublicIPPrefix = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefix
      PatchRouteFilterRule = Azure::Network::Mgmt::V2019_02_01::Models::PatchRouteFilterRule
      PatchRouteFilter = Azure::Network::Mgmt::V2019_02_01::Models::PatchRouteFilter
      BgpServiceCommunity = Azure::Network::Mgmt::V2019_02_01::Models::BgpServiceCommunity
      VirtualNetworkPeering = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeering
      VirtualNetwork = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetwork
      NetworkIntentPolicy = Azure::Network::Mgmt::V2019_02_01::Models::NetworkIntentPolicy
      VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::Network::Mgmt::V2019_02_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnection
      ConnectionSharedKey = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionSharedKey
      VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionListEntity
      P2SVpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigVpnClientRootCertificate
      P2SVpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
      P2SVpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
      P2SVpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
      P2SVpnServerConfiguration = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfiguration
      VirtualWAN = Azure::Network::Mgmt::V2019_02_01::Models::VirtualWAN
      VpnSite = Azure::Network::Mgmt::V2019_02_01::Models::VpnSite
      HubVirtualNetworkConnection = Azure::Network::Mgmt::V2019_02_01::Models::HubVirtualNetworkConnection
      VirtualHub = Azure::Network::Mgmt::V2019_02_01::Models::VirtualHub
      VpnConnection = Azure::Network::Mgmt::V2019_02_01::Models::VpnConnection
      VpnGateway = Azure::Network::Mgmt::V2019_02_01::Models::VpnGateway
      P2SVpnGateway = Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnGateway
      WebApplicationFirewallPolicy = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicy
      ApplicationGatewayProtocol = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProtocol
      IPAllocationMethod = Azure::Network::Mgmt::V2019_02_01::Models::IPAllocationMethod
      SecurityRuleProtocol = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::Network::Mgmt::V2019_02_01::Models::RouteNextHopType
      PublicIPAddressSkuName = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressSkuName
      IPVersion = Azure::Network::Mgmt::V2019_02_01::Models::IPVersion
      DdosSettingsProtectionCoverage = Azure::Network::Mgmt::V2019_02_01::Models::DdosSettingsProtectionCoverage
      TransportProtocol = Azure::Network::Mgmt::V2019_02_01::Models::TransportProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySkuName = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicyType
      ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicyName
      ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslCipherSuite
      ApplicationGatewayCustomErrorStatusCode = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCustomErrorStatusCode
      ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRedirectType
      ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayOperationalState
      ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallMode
      ResourceIdentityType = Azure::Network::Mgmt::V2019_02_01::Models::ResourceIdentityType
      ProvisioningState = Azure::Network::Mgmt::V2019_02_01::Models::ProvisioningState
      AzureFirewallRCActionType = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallRCActionType
      AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleProtocolType
      AzureFirewallNatRCActionType = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRCActionType
      AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRuleProtocol
      AzureFirewallThreatIntelMode = Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallThreatIntelMode
      DdosCustomPolicyProtocol = Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicyProtocol
      DdosCustomPolicyTriggerSensitivityOverride = Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicyTriggerSensitivityOverride
      AuthorizationUseStatus = Azure::Network::Mgmt::V2019_02_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      Access = Azure::Network::Mgmt::V2019_02_01::Models::Access
      ExpressRoutePeeringType = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePeeringType
      ExpressRoutePeeringState = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePeeringState
      CircuitConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::CircuitConnectionStatus
      ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::Network::Mgmt::V2019_02_01::Models::ServiceProviderProvisioningState
      ExpressRouteLinkConnectorType = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkConnectorType
      ExpressRouteLinkAdminState = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkAdminState
      ExpressRoutePortsEncapsulation = Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsEncapsulation
      LoadBalancerSkuName = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerSkuName
      LoadDistribution = Azure::Network::Mgmt::V2019_02_01::Models::LoadDistribution
      ProbeProtocol = Azure::Network::Mgmt::V2019_02_01::Models::ProbeProtocol
      LoadBalancerOutboundRuleProtocol = Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerOutboundRuleProtocol
      NatGatewaySkuName = Azure::Network::Mgmt::V2019_02_01::Models::NatGatewaySkuName
      NetworkOperationStatus = Azure::Network::Mgmt::V2019_02_01::Models::NetworkOperationStatus
      AuthenticationMethod = Azure::Network::Mgmt::V2019_02_01::Models::AuthenticationMethod
      EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveSecurityRuleProtocol
      EffectiveRouteSource = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteState
      AssociationType = Azure::Network::Mgmt::V2019_02_01::Models::AssociationType
      Direction = Azure::Network::Mgmt::V2019_02_01::Models::Direction
      IpFlowProtocol = Azure::Network::Mgmt::V2019_02_01::Models::IpFlowProtocol
      NextHopType = Azure::Network::Mgmt::V2019_02_01::Models::NextHopType
      PcProtocol = Azure::Network::Mgmt::V2019_02_01::Models::PcProtocol
      PcStatus = Azure::Network::Mgmt::V2019_02_01::Models::PcStatus
      PcError = Azure::Network::Mgmt::V2019_02_01::Models::PcError
      FlowLogFormatType = Azure::Network::Mgmt::V2019_02_01::Models::FlowLogFormatType
      Protocol = Azure::Network::Mgmt::V2019_02_01::Models::Protocol
      HTTPMethod = Azure::Network::Mgmt::V2019_02_01::Models::HTTPMethod
      Origin = Azure::Network::Mgmt::V2019_02_01::Models::Origin
      Severity = Azure::Network::Mgmt::V2019_02_01::Models::Severity
      IssueType = Azure::Network::Mgmt::V2019_02_01::Models::IssueType
      ConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionStatus
      ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorSourceStatus
      ConnectionState = Azure::Network::Mgmt::V2019_02_01::Models::ConnectionState
      EvaluationState = Azure::Network::Mgmt::V2019_02_01::Models::EvaluationState
      VerbosityLevel = Azure::Network::Mgmt::V2019_02_01::Models::VerbosityLevel
      PublicIPPrefixSkuName = Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixSkuName
      VirtualNetworkPeeringState = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::Network::Mgmt::V2019_02_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySkuTier
      VpnClientProtocol = Azure::Network::Mgmt::V2019_02_01::Models::VpnClientProtocol
      IpsecEncryption = Azure::Network::Mgmt::V2019_02_01::Models::IpsecEncryption
      IpsecIntegrity = Azure::Network::Mgmt::V2019_02_01::Models::IpsecIntegrity
      IkeEncryption = Azure::Network::Mgmt::V2019_02_01::Models::IkeEncryption
      IkeIntegrity = Azure::Network::Mgmt::V2019_02_01::Models::IkeIntegrity
      DhGroup = Azure::Network::Mgmt::V2019_02_01::Models::DhGroup
      PfsGroup = Azure::Network::Mgmt::V2019_02_01::Models::PfsGroup
      BgpPeerState = Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerState
      ProcessorArchitecture = Azure::Network::Mgmt::V2019_02_01::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionProtocol = Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionProtocol
      OfficeTrafficCategory = Azure::Network::Mgmt::V2019_02_01::Models::OfficeTrafficCategory
      VpnGatewayTunnelingProtocol = Azure::Network::Mgmt::V2019_02_01::Models::VpnGatewayTunnelingProtocol
      VpnConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::VpnConnectionStatus
      VirtualWanSecurityProviderType = Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProviderType
      TunnelConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::TunnelConnectionStatus
      HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2019_02_01::Models::HubVirtualNetworkConnectionStatus
      WebApplicationFirewallEnabledState = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallEnabledState
      WebApplicationFirewallMode = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallMode
      WebApplicationFirewallRuleType = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallRuleType
      WebApplicationFirewallMatchVariable = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallMatchVariable
      WebApplicationFirewallOperator = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallOperator
      WebApplicationFirewallTransform = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallTransform
      WebApplicationFirewallAction = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallAction
      WebApplicationFirewallPolicyResourceState = Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicyResourceState
    end

    #
    # NetworkManagementClass
    #
    class NetworkManagementClass
      attr_reader :application_gateways, :application_security_groups, :available_delegations, :available_resource_group_delegations, :azure_firewalls, :azure_firewall_fqdn_tags, :ddos_custom_policies, :ddos_protection_plans, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuit_connections, :peer_express_route_circuit_connections, :express_route_circuits, :express_route_service_providers, :express_route_cross_connections, :express_route_cross_connection_peerings, :express_route_gateways, :express_route_connections, :express_route_ports_locations, :express_route_ports, :express_route_links, :interface_endpoints, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_outbound_rules, :load_balancer_network_interfaces, :load_balancer_probes, :nat_gateways, :network_interfaces, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_interface_tap_configurations, :network_profiles, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :operations, :public_ipaddresses, :public_ipprefixes, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :service_endpoint_policies, :service_endpoint_policy_definitions, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :virtual_network_taps, :virtual_wans, :vpn_sites, :vpn_sites_configuration, :virtual_hubs, :hub_virtual_network_connections, :vpn_gateways, :vpn_connections, :p2s_vpn_server_configurations, :p2s_vpn_gateways, :web_application_firewall_policies, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Network::Mgmt::V2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @client_1 = Azure::Network::Mgmt::V2019_02_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @application_gateways = @client_1.application_gateways
        @application_security_groups = @client_1.application_security_groups
        @available_delegations = @client_1.available_delegations
        @available_resource_group_delegations = @client_1.available_resource_group_delegations
        @azure_firewalls = @client_1.azure_firewalls
        @azure_firewall_fqdn_tags = @client_1.azure_firewall_fqdn_tags
        @ddos_custom_policies = @client_1.ddos_custom_policies
        @ddos_protection_plans = @client_1.ddos_protection_plans
        @available_endpoint_services = @client_1.available_endpoint_services
        @express_route_circuit_authorizations = @client_1.express_route_circuit_authorizations
        @express_route_circuit_peerings = @client_1.express_route_circuit_peerings
        @express_route_circuit_connections = @client_1.express_route_circuit_connections
        @peer_express_route_circuit_connections = @client_1.peer_express_route_circuit_connections
        @express_route_circuits = @client_1.express_route_circuits
        @express_route_service_providers = @client_1.express_route_service_providers
        @express_route_cross_connections = @client_1.express_route_cross_connections
        @express_route_cross_connection_peerings = @client_1.express_route_cross_connection_peerings
        @express_route_gateways = @client_1.express_route_gateways
        @express_route_connections = @client_1.express_route_connections
        @express_route_ports_locations = @client_1.express_route_ports_locations
        @express_route_ports = @client_1.express_route_ports
        @express_route_links = @client_1.express_route_links
        @interface_endpoints = @client_1.interface_endpoints
        @load_balancers = @client_1.load_balancers
        @load_balancer_backend_address_pools = @client_1.load_balancer_backend_address_pools
        @load_balancer_frontend_ipconfigurations = @client_1.load_balancer_frontend_ipconfigurations
        @inbound_nat_rules = @client_1.inbound_nat_rules
        @load_balancer_load_balancing_rules = @client_1.load_balancer_load_balancing_rules
        @load_balancer_outbound_rules = @client_1.load_balancer_outbound_rules
        @load_balancer_network_interfaces = @client_1.load_balancer_network_interfaces
        @load_balancer_probes = @client_1.load_balancer_probes
        @nat_gateways = @client_1.nat_gateways
        @network_interfaces = @client_1.network_interfaces
        @network_interface_ipconfigurations = @client_1.network_interface_ipconfigurations
        @network_interface_load_balancers = @client_1.network_interface_load_balancers
        @network_interface_tap_configurations = @client_1.network_interface_tap_configurations
        @network_profiles = @client_1.network_profiles
        @network_security_groups = @client_1.network_security_groups
        @security_rules = @client_1.security_rules
        @default_security_rules = @client_1.default_security_rules
        @network_watchers = @client_1.network_watchers
        @packet_captures = @client_1.packet_captures
        @connection_monitors = @client_1.connection_monitors
        @operations = @client_1.operations
        @public_ipaddresses = @client_1.public_ipaddresses
        @public_ipprefixes = @client_1.public_ipprefixes
        @route_filters = @client_1.route_filters
        @route_filter_rules = @client_1.route_filter_rules
        @route_tables = @client_1.route_tables
        @routes = @client_1.routes
        @bgp_service_communities = @client_1.bgp_service_communities
        @service_endpoint_policies = @client_1.service_endpoint_policies
        @service_endpoint_policy_definitions = @client_1.service_endpoint_policy_definitions
        @usages = @client_1.usages
        @virtual_networks = @client_1.virtual_networks
        @subnets = @client_1.subnets
        @virtual_network_peerings = @client_1.virtual_network_peerings
        @virtual_network_gateways = @client_1.virtual_network_gateways
        @virtual_network_gateway_connections = @client_1.virtual_network_gateway_connections
        @local_network_gateways = @client_1.local_network_gateways
        @virtual_network_taps = @client_1.virtual_network_taps
        @virtual_wans = @client_1.virtual_wans
        @vpn_sites = @client_1.vpn_sites
        @vpn_sites_configuration = @client_1.vpn_sites_configuration
        @virtual_hubs = @client_1.virtual_hubs
        @hub_virtual_network_connections = @client_1.hub_virtual_network_connections
        @vpn_gateways = @client_1.vpn_gateways
        @vpn_connections = @client_1.vpn_connections
        @p2s_vpn_server_configurations = @client_1.p2s_vpn_server_configurations
        @p2s_vpn_gateways = @client_1.p2s_vpn_gateways
        @web_application_firewall_policies = @client_1.web_application_firewall_policies

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Network/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def effective_route_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteListResult
      end
      def application_gateway_probe_health_response_match
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProbeHealthResponseMatch
      end
      def load_balancer_load_balancing_rule_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerLoadBalancingRuleListResult
      end
      def load_balancer_outbound_rule_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerOutboundRuleListResult
      end
      def sub_resource
        Azure::Network::Mgmt::V2019_02_01::Models::SubResource
      end
      def load_balancer_probe_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerProbeListResult
      end
      def express_route_cross_connections_routes_table_summary_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      end
      def express_route_circuit_reference
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitReference
      end
      def list_virtual_wans_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListVirtualWANsResult
      end
      def route_filter_rule_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterRuleListResult
      end
      def device_properties
        Azure::Network::Mgmt::V2019_02_01::Models::DeviceProperties
      end
      def route_filter_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterListResult
      end
      def virtual_network_tap_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkTapListResult
      end
      def express_route_cross_connection_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionListResult
      end
      def service_endpoint_properties_format
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPropertiesFormat
      end
      def express_route_cross_connection_peering_list
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionPeeringList
      end
      def get_vpn_sites_configuration_request
        Azure::Network::Mgmt::V2019_02_01::Models::GetVpnSitesConfigurationRequest
      end
      def virtual_hub_id
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubId
      end
      def public_ipaddress_dns_settings
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressDnsSettings
      end
      def express_route_circuit_peering_id
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringId
      end
      def ip_tag
        Azure::Network::Mgmt::V2019_02_01::Models::IpTag
      end
      def express_route_gateway_properties_auto_scale_configuration_bounds
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
      end
      def local_network_gateway_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LocalNetworkGatewayListResult
      end
      def express_route_gateway_properties_auto_scale_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
      end
      def virtual_hub_route
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubRoute
      end
      def list_p2_svpn_gateways_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListP2SVpnGatewaysResult
      end
      def virtual_network_gateway_connection_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionListResult
      end
      def p2_svpn_profile_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnProfileParameters
      end
      def list_virtual_hubs_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListVirtualHubsResult
      end
      def express_route_gateway_list
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGatewayList
      end
      def gateway_route_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::GatewayRouteListResult
      end
      def express_route_connection_list
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnectionList
      end
      def virtual_network_gateway_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayListResult
      end
      def express_route_ports_location_bandwidths
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocationBandwidths
      end
      def vpn_client_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientParameters
      end
      def public_ipprefix_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixListResult
      end
      def list_vpn_gateways_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListVpnGatewaysResult
      end
      def express_route_ports_location_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocationListResult
      end
      def application_gateway_backend_health_http_settings
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthHttpSettings
      end
      def vpn_profile_response
        Azure::Network::Mgmt::V2019_02_01::Models::VpnProfileResponse
      end
      def application_gateway_backend_health_pool
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthPool
      end
      def express_route_link_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkListResult
      end
      def application_gateway_sku
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySku
      end
      def referenced_public_ip_address
        Azure::Network::Mgmt::V2019_02_01::Models::ReferencedPublicIpAddress
      end
      def gateway_route
        Azure::Network::Mgmt::V2019_02_01::Models::GatewayRoute
      end
      def express_route_port_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortListResult
      end
      def bgp_settings
        Azure::Network::Mgmt::V2019_02_01::Models::BgpSettings
      end
      def interface_endpoint_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::InterfaceEndpointListResult
      end
      def ipsec_policy
        Azure::Network::Mgmt::V2019_02_01::Models::IpsecPolicy
      end
      def load_balancer_sku
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerSku
      end
      def application_gateway_custom_error
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCustomError
      end
      def public_ipprefix_sku
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixSku
      end
      def virtual_network_gateway_sku
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySku
      end
      def public_ipaddress_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressListResult
      end
      def prepare_network_policies_request
        Azure::Network::Mgmt::V2019_02_01::Models::PrepareNetworkPoliciesRequest
      end
      def operation_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::OperationListResult
      end
      def application_gateway_header_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayHeaderConfiguration
      end
      def operation
        Azure::Network::Mgmt::V2019_02_01::Models::Operation
      end
      def application_gateway_rewrite_rule
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRule
      end
      def operation_properties_format_service_specification
        Azure::Network::Mgmt::V2019_02_01::Models::OperationPropertiesFormatServiceSpecification
      end
      def virtual_wan_security_provider
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProvider
      end
      def load_balancer_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerListResult
      end
      def application_gateway_firewall_disabled_rule_group
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      end
      def inbound_nat_rule_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::InboundNatRuleListResult
      end
      def application_gateway_web_application_firewall_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      end
      def load_balancer_backend_address_pool_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerBackendAddressPoolListResult
      end
      def managed_service_identity_user_assigned_identities_value
        Azure::Network::Mgmt::V2019_02_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      end
      def load_balancer_frontend_ipconfiguration_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerFrontendIPConfigurationListResult
      end
      def virtual_network_usage
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkUsage
      end
      def application_gateway_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayListResult
      end
      def application_gateway_firewall_rule
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRule
      end
      def dimension
        Azure::Network::Mgmt::V2019_02_01::Models::Dimension
      end
      def virtual_network_usage_name
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkUsageName
      end
      def availability
        Azure::Network::Mgmt::V2019_02_01::Models::Availability
      end
      def ipaddress_availability_result
        Azure::Network::Mgmt::V2019_02_01::Models::IPAddressAvailabilityResult
      end
      def log_specification
        Azure::Network::Mgmt::V2019_02_01::Models::LogSpecification
      end
      def application_gateway_available_ssl_predefined_policies
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      end
      def network_interface_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceListResult
      end
      def error_details
        Azure::Network::Mgmt::V2019_02_01::Models::ErrorDetails
      end
      def nat_gateway_sku
        Azure::Network::Mgmt::V2019_02_01::Models::NatGatewaySku
      end
      def tags_object
        Azure::Network::Mgmt::V2019_02_01::Models::TagsObject
      end
      def metric_specification
        Azure::Network::Mgmt::V2019_02_01::Models::MetricSpecification
      end
      def available_delegation
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableDelegation
      end
      def nat_gateway_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NatGatewayListResult
      end
      def virtual_wan_security_providers
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProviders
      end
      def azure_async_operation_result
        Azure::Network::Mgmt::V2019_02_01::Models::AzureAsyncOperationResult
      end
      def azure_firewall_application_rule_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleProtocol
      end
      def network_interface_tap_configuration_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceTapConfigurationListResult
      end
      def dhcp_options
        Azure::Network::Mgmt::V2019_02_01::Models::DhcpOptions
      end
      def network_interface_ipconfiguration_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceIPConfigurationListResult
      end
      def azure_firewall_nat_rule
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRule
      end
      def network_interface_load_balancer_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceLoadBalancerListResult
      end
      def azure_firewall_network_rule
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRule
      end
      def effective_network_security_group_association
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroupAssociation
      end
      def list_p2_svpn_server_configurations_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListP2SVpnServerConfigurationsResult
      end
      def effective_network_security_rule
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityRule
      end
      def address_space
        Azure::Network::Mgmt::V2019_02_01::Models::AddressSpace
      end
      def effective_network_security_group
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroup
      end
      def dns_name_availability_result
        Azure::Network::Mgmt::V2019_02_01::Models::DnsNameAvailabilityResult
      end
      def effective_network_security_group_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveNetworkSecurityGroupListResult
      end
      def usages_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::UsagesListResult
      end
      def effective_route
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRoute
      end
      def application_gateway_on_demand_probe
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayOnDemandProbe
      end
      def ddos_protection_plan_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::DdosProtectionPlanListResult
      end
      def web_application_firewall_policy_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicyListResult
      end
      def endpoint_services_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::EndpointServicesListResult
      end
      def web_application_firewall_custom_rule
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallCustomRule
      end
      def authorization_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::AuthorizationListResult
      end
      def container_network_interface_ip_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterfaceIpConfiguration
      end
      def service_endpoint_policy_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyListResult
      end
      def match_condition
        Azure::Network::Mgmt::V2019_02_01::Models::MatchCondition
      end
      def express_route_connection_id
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnectionId
      end
      def match_variable
        Azure::Network::Mgmt::V2019_02_01::Models::MatchVariable
      end
      def bgp_service_community_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::BgpServiceCommunityListResult
      end
      def network_profile_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkProfileListResult
      end
      def bgpcommunity
        Azure::Network::Mgmt::V2019_02_01::Models::BGPCommunity
      end
      def security_rule_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleListResult
      end
      def express_route_circuit_peering_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringListResult
      end
      def network_security_group_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroupListResult
      end
      def peer_express_route_circuit_connection_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::PeerExpressRouteCircuitConnectionListResult
      end
      def error_response
        Azure::Network::Mgmt::V2019_02_01::Models::ErrorResponse
      end
      def express_route_circuit_service_provider_properties
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitServiceProviderProperties
      end
      def policy_settings
        Azure::Network::Mgmt::V2019_02_01::Models::PolicySettings
      end
      def express_route_circuit_arp_table
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitArpTable
      end
      def network_watcher_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkWatcherListResult
      end
      def express_route_circuit_routes_table
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitRoutesTable
      end
      def topology_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::TopologyParameters
      end
      def express_route_circuit_routes_table_summary
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitRoutesTableSummary
      end
      def topology_association
        Azure::Network::Mgmt::V2019_02_01::Models::TopologyAssociation
      end
      def express_route_circuit_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitListResult
      end
      def topology_resource
        Azure::Network::Mgmt::V2019_02_01::Models::TopologyResource
      end
      def route_table_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::RouteTableListResult
      end
      def topology
        Azure::Network::Mgmt::V2019_02_01::Models::Topology
      end
      def express_route_cross_connection_routes_table_summary
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      end
      def verification_ipflow_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::VerificationIPFlowParameters
      end
      def network_interface_dns_settings
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceDnsSettings
      end
      def verification_ipflow_result
        Azure::Network::Mgmt::V2019_02_01::Models::VerificationIPFlowResult
      end
      def vpn_device_script_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::VpnDeviceScriptParameters
      end
      def next_hop_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::NextHopParameters
      end
      def public_ipaddress_sku
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressSku
      end
      def next_hop_result
        Azure::Network::Mgmt::V2019_02_01::Models::NextHopResult
      end
      def virtual_network_connection_gateway_reference
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkConnectionGatewayReference
      end
      def security_group_view_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupViewParameters
      end
      def connection_reset_shared_key
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionResetSharedKey
      end
      def network_interface_association
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceAssociation
      end
      def tunnel_connection_health
        Azure::Network::Mgmt::V2019_02_01::Models::TunnelConnectionHealth
      end
      def subnet_association
        Azure::Network::Mgmt::V2019_02_01::Models::SubnetAssociation
      end
      def application_gateway_backend_address
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendAddress
      end
      def security_rule_associations
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleAssociations
      end
      def application_gateway_backend_health_server
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthServer
      end
      def security_group_network_interface
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupNetworkInterface
      end
      def application_gateway_backend_health
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealth
      end
      def security_group_view_result
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityGroupViewResult
      end
      def bgp_peer_status
        Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerStatus
      end
      def packet_capture_storage_location
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureStorageLocation
      end
      def list_vpn_connections_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListVpnConnectionsResult
      end
      def packet_capture_filter
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureFilter
      end
      def vpn_site_id
        Azure::Network::Mgmt::V2019_02_01::Models::VpnSiteId
      end
      def packet_capture_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureParameters
      end
      def application_gateway_rewrite_rule_action_set
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleActionSet
      end
      def packet_capture
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCapture
      end
      def virtual_network_list_usage_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkListUsageResult
      end
      def packet_capture_result
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureResult
      end
      def application_gateway_autoscale_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAutoscaleConfiguration
      end
      def packet_capture_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureListResult
      end
      def application_gateway_firewall_rule_group
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRuleGroup
      end
      def packet_capture_query_status_result
        Azure::Network::Mgmt::V2019_02_01::Models::PacketCaptureQueryStatusResult
      end
      def virtual_network_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkListResult
      end
      def troubleshooting_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingParameters
      end
      def error
        Azure::Network::Mgmt::V2019_02_01::Models::Error
      end
      def query_troubleshooting_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::QueryTroubleshootingParameters
      end
      def available_delegations_result
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableDelegationsResult
      end
      def troubleshooting_recommended_actions
        Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingRecommendedActions
      end
      def azure_firewall_application_rule
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRule
      end
      def troubleshooting_details
        Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingDetails
      end
      def virtual_network_peering_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeeringListResult
      end
      def troubleshooting_result
        Azure::Network::Mgmt::V2019_02_01::Models::TroubleshootingResult
      end
      def azure_firewall_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallListResult
      end
      def retention_policy_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::RetentionPolicyParameters
      end
      def protocol_custom_settings_format
        Azure::Network::Mgmt::V2019_02_01::Models::ProtocolCustomSettingsFormat
      end
      def flow_log_format_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::FlowLogFormatParameters
      end
      def ddos_protection_plan
        Azure::Network::Mgmt::V2019_02_01::Models::DdosProtectionPlan
      end
      def flow_log_status_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::FlowLogStatusParameters
      end
      def usage_name
        Azure::Network::Mgmt::V2019_02_01::Models::UsageName
      end
      def traffic_analytics_configuration_properties
        Azure::Network::Mgmt::V2019_02_01::Models::TrafficAnalyticsConfigurationProperties
      end
      def express_route_circuit_stats
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitStats
      end
      def traffic_analytics_properties
        Azure::Network::Mgmt::V2019_02_01::Models::TrafficAnalyticsProperties
      end
      def vpn_client_connection_health
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientConnectionHealth
      end
      def flow_log_information
        Azure::Network::Mgmt::V2019_02_01::Models::FlowLogInformation
      end
      def express_route_circuit_connection_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitConnectionListResult
      end
      def connectivity_source
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivitySource
      end
      def route_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::RouteListResult
      end
      def connectivity_destination
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityDestination
      end
      def express_route_circuits_routes_table_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsRoutesTableListResult
      end
      def httpheader
        Azure::Network::Mgmt::V2019_02_01::Models::HTTPHeader
      end
      def express_route_service_provider_bandwidths_offered
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      end
      def httpconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::HTTPConfiguration
      end
      def endpoint_service
        Azure::Network::Mgmt::V2019_02_01::Models::EndpointService
      end
      def protocol_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ProtocolConfiguration
      end
      def virtual_network_gateway_list_connections_result
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayListConnectionsResult
      end
      def connectivity_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityParameters
      end
      def vpn_client_ipsec_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientIPsecParameters
      end
      def connectivity_issue
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityIssue
      end
      def bgp_peer_status_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerStatusListResult
      end
      def connectivity_hop
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityHop
      end
      def application_gateway_backend_health_on_demand
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthOnDemand
      end
      def connectivity_information
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectivityInformation
      end
      def vpn_client_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientConfiguration
      end
      def azure_reachability_report_location
        Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportLocation
      end
      def application_gateway_rewrite_rule_condition
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleCondition
      end
      def azure_reachability_report_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportParameters
      end
      def application_gateway_firewall_exclusion
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallExclusion
      end
      def azure_reachability_report_latency_info
        Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportLatencyInfo
      end
      def application_gateway_available_waf_rule_sets_result
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      end
      def azure_reachability_report_item
        Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReportItem
      end
      def application_security_group_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationSecurityGroupListResult
      end
      def azure_reachability_report
        Azure::Network::Mgmt::V2019_02_01::Models::AzureReachabilityReport
      end
      def azure_firewall_nat_rcaction
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRCAction
      end
      def available_providers_list_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListParameters
      end
      def azure_firewall_fqdn_tag_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallFqdnTagListResult
      end
      def available_providers_list_city
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListCity
      end
      def usage
        Azure::Network::Mgmt::V2019_02_01::Models::Usage
      end
      def available_providers_list_state
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListState
      end
      def service_endpoint_policy_definition_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyDefinitionListResult
      end
      def available_providers_list_country
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersListCountry
      end
      def express_route_circuit_sku
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSku
      end
      def available_providers_list
        Azure::Network::Mgmt::V2019_02_01::Models::AvailableProvidersList
      end
      def express_route_circuits_routes_table_summary_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      end
      def connection_monitor_source
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorSource
      end
      def list_vpn_sites_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListVpnSitesResult
      end
      def connection_monitor_destination
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorDestination
      end
      def virtual_hub_route_table
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualHubRouteTable
      end
      def connection_monitor_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorParameters
      end
      def application_gateway_ssl_policy
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicy
      end
      def connection_monitor
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitor
      end
      def network_intent_policy_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkIntentPolicyConfiguration
      end
      def connection_monitor_result
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorResult
      end
      def resource
        Azure::Network::Mgmt::V2019_02_01::Models::Resource
      end
      def connection_monitor_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorListResult
      end
      def subnet_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::SubnetListResult
      end
      def connection_state_snapshot
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionStateSnapshot
      end
      def express_route_circuit_peering_config
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringConfig
      end
      def connection_monitor_query_result
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorQueryResult
      end
      def express_route_circuits_arp_table_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitsArpTableListResult
      end
      def network_configuration_diagnostic_profile
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticProfile
      end
      def ddos_settings
        Azure::Network::Mgmt::V2019_02_01::Models::DdosSettings
      end
      def network_configuration_diagnostic_parameters
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticParameters
      end
      def list_hub_virtual_network_connections_result
        Azure::Network::Mgmt::V2019_02_01::Models::ListHubVirtualNetworkConnectionsResult
      end
      def matched_rule
        Azure::Network::Mgmt::V2019_02_01::Models::MatchedRule
      end
      def azure_firewall_rcaction
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallRCAction
      end
      def network_security_rules_evaluation_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityRulesEvaluationResult
      end
      def ipv6_express_route_circuit_peering_config
        Azure::Network::Mgmt::V2019_02_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      end
      def evaluated_network_security_group
        Azure::Network::Mgmt::V2019_02_01::Models::EvaluatedNetworkSecurityGroup
      end
      def application_gateway_connection_draining
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayConnectionDraining
      end
      def network_security_group_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroupResult
      end
      def network_configuration_diagnostic_result
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticResult
      end
      def managed_service_identity
        Azure::Network::Mgmt::V2019_02_01::Models::ManagedServiceIdentity
      end
      def network_configuration_diagnostic_response
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkConfigurationDiagnosticResponse
      end
      def express_route_service_provider_list_result
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProviderListResult
      end
      def operation_display
        Azure::Network::Mgmt::V2019_02_01::Models::OperationDisplay
      end
      def network_interface_tap_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceTapConfiguration
      end
      def application_security_group
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationSecurityGroup
      end
      def security_rule
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRule
      end
      def interface_endpoint
        Azure::Network::Mgmt::V2019_02_01::Models::InterfaceEndpoint
      end
      def network_interface
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterface
      end
      def network_security_group
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkSecurityGroup
      end
      def route
        Azure::Network::Mgmt::V2019_02_01::Models::Route
      end
      def route_table
        Azure::Network::Mgmt::V2019_02_01::Models::RouteTable
      end
      def service_endpoint_policy_definition
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicyDefinition
      end
      def service_endpoint_policy
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceEndpointPolicy
      end
      def public_ipaddress
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddress
      end
      def ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::IPConfiguration
      end
      def ipconfiguration_profile
        Azure::Network::Mgmt::V2019_02_01::Models::IPConfigurationProfile
      end
      def resource_navigation_link
        Azure::Network::Mgmt::V2019_02_01::Models::ResourceNavigationLink
      end
      def service_association_link
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceAssociationLink
      end
      def delegation
        Azure::Network::Mgmt::V2019_02_01::Models::Delegation
      end
      def subnet
        Azure::Network::Mgmt::V2019_02_01::Models::Subnet
      end
      def frontend_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::FrontendIPConfiguration
      end
      def virtual_network_tap
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkTap
      end
      def backend_address_pool
        Azure::Network::Mgmt::V2019_02_01::Models::BackendAddressPool
      end
      def inbound_nat_rule
        Azure::Network::Mgmt::V2019_02_01::Models::InboundNatRule
      end
      def network_interface_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkInterfaceIPConfiguration
      end
      def application_gateway_backend_address_pool
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendAddressPool
      end
      def application_gateway_backend_http_settings
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHttpSettings
      end
      def application_gateway_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayIPConfiguration
      end
      def application_gateway_authentication_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAuthenticationCertificate
      end
      def application_gateway_trusted_root_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayTrustedRootCertificate
      end
      def application_gateway_ssl_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslCertificate
      end
      def application_gateway_frontend_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFrontendIPConfiguration
      end
      def application_gateway_frontend_port
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFrontendPort
      end
      def application_gateway_http_listener
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayHttpListener
      end
      def application_gateway_path_rule
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayPathRule
      end
      def application_gateway_probe
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProbe
      end
      def application_gateway_request_routing_rule
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRequestRoutingRule
      end
      def application_gateway_rewrite_rule_set
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRewriteRuleSet
      end
      def application_gateway_redirect_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRedirectConfiguration
      end
      def application_gateway_url_path_map
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayUrlPathMap
      end
      def application_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGateway
      end
      def application_gateway_firewall_rule_set
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallRuleSet
      end
      def application_gateway_available_ssl_options
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayAvailableSslOptions
      end
      def application_gateway_ssl_predefined_policy
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPredefinedPolicy
      end
      def azure_firewall_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallIPConfiguration
      end
      def azure_firewall_application_rule_collection
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleCollection
      end
      def azure_firewall_nat_rule_collection
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRuleCollection
      end
      def azure_firewall_network_rule_collection
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRuleCollection
      end
      def azure_firewall
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewall
      end
      def azure_firewall_fqdn_tag
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallFqdnTag
      end
      def ddos_custom_policy
        Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicy
      end
      def endpoint_service_result
        Azure::Network::Mgmt::V2019_02_01::Models::EndpointServiceResult
      end
      def express_route_circuit_authorization
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitAuthorization
      end
      def route_filter_rule
        Azure::Network::Mgmt::V2019_02_01::Models::RouteFilterRule
      end
      def express_route_circuit_connection
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitConnection
      end
      def peer_express_route_circuit_connection
        Azure::Network::Mgmt::V2019_02_01::Models::PeerExpressRouteCircuitConnection
      end
      def express_route_circuit_peering
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeering
      end
      def route_filter
        Azure::Network::Mgmt::V2019_02_01::Models::RouteFilter
      end
      def express_route_circuit
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuit
      end
      def express_route_service_provider
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteServiceProvider
      end
      def express_route_cross_connection_peering
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnectionPeering
      end
      def express_route_cross_connection
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCrossConnection
      end
      def express_route_connection
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteConnection
      end
      def express_route_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteGateway
      end
      def express_route_ports_location
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsLocation
      end
      def express_route_link
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLink
      end
      def express_route_port
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePort
      end
      def load_balancing_rule
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancingRule
      end
      def probe
        Azure::Network::Mgmt::V2019_02_01::Models::Probe
      end
      def inbound_nat_pool
        Azure::Network::Mgmt::V2019_02_01::Models::InboundNatPool
      end
      def outbound_rule
        Azure::Network::Mgmt::V2019_02_01::Models::OutboundRule
      end
      def load_balancer
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancer
      end
      def nat_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::NatGateway
      end
      def container_network_interface_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterfaceConfiguration
      end
      def container
        Azure::Network::Mgmt::V2019_02_01::Models::Container
      end
      def container_network_interface
        Azure::Network::Mgmt::V2019_02_01::Models::ContainerNetworkInterface
      end
      def network_profile
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkProfile
      end
      def network_watcher
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkWatcher
      end
      def public_ipprefix
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefix
      end
      def patch_route_filter_rule
        Azure::Network::Mgmt::V2019_02_01::Models::PatchRouteFilterRule
      end
      def patch_route_filter
        Azure::Network::Mgmt::V2019_02_01::Models::PatchRouteFilter
      end
      def bgp_service_community
        Azure::Network::Mgmt::V2019_02_01::Models::BgpServiceCommunity
      end
      def virtual_network_peering
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeering
      end
      def virtual_network
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetwork
      end
      def network_intent_policy
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkIntentPolicy
      end
      def virtual_network_gateway_ipconfiguration
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayIPConfiguration
      end
      def vpn_client_root_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientRootCertificate
      end
      def vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientRevokedCertificate
      end
      def virtual_network_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGateway
      end
      def local_network_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::LocalNetworkGateway
      end
      def virtual_network_gateway_connection
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnection
      end
      def connection_shared_key
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionSharedKey
      end
      def virtual_network_gateway_connection_list_entity
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionListEntity
      end
      def p2_svpn_server_config_vpn_client_root_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigVpnClientRootCertificate
      end
      def p2_svpn_server_config_vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
      end
      def p2_svpn_server_config_radius_server_root_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
      end
      def p2_svpn_server_config_radius_client_root_certificate
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
      end
      def p2_svpn_server_configuration
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnServerConfiguration
      end
      def virtual_wan
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualWAN
      end
      def vpn_site
        Azure::Network::Mgmt::V2019_02_01::Models::VpnSite
      end
      def hub_virtual_network_connection
        Azure::Network::Mgmt::V2019_02_01::Models::HubVirtualNetworkConnection
      end
      def virtual_hub
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualHub
      end
      def vpn_connection
        Azure::Network::Mgmt::V2019_02_01::Models::VpnConnection
      end
      def vpn_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::VpnGateway
      end
      def p2_svpn_gateway
        Azure::Network::Mgmt::V2019_02_01::Models::P2SVpnGateway
      end
      def web_application_firewall_policy
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicy
      end
      def application_gateway_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayProtocol
      end
      def ipallocation_method
        Azure::Network::Mgmt::V2019_02_01::Models::IPAllocationMethod
      end
      def security_rule_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleProtocol
      end
      def security_rule_access
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleAccess
      end
      def security_rule_direction
        Azure::Network::Mgmt::V2019_02_01::Models::SecurityRuleDirection
      end
      def route_next_hop_type
        Azure::Network::Mgmt::V2019_02_01::Models::RouteNextHopType
      end
      def public_ipaddress_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPAddressSkuName
      end
      def ipversion
        Azure::Network::Mgmt::V2019_02_01::Models::IPVersion
      end
      def ddos_settings_protection_coverage
        Azure::Network::Mgmt::V2019_02_01::Models::DdosSettingsProtectionCoverage
      end
      def transport_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::TransportProtocol
      end
      def application_gateway_cookie_based_affinity
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCookieBasedAffinity
      end
      def application_gateway_backend_health_server_health
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayBackendHealthServerHealth
      end
      def application_gateway_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySkuName
      end
      def application_gateway_tier
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayTier
      end
      def application_gateway_ssl_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslProtocol
      end
      def application_gateway_ssl_policy_type
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicyType
      end
      def application_gateway_ssl_policy_name
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslPolicyName
      end
      def application_gateway_ssl_cipher_suite
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewaySslCipherSuite
      end
      def application_gateway_custom_error_status_code
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayCustomErrorStatusCode
      end
      def application_gateway_request_routing_rule_type
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRequestRoutingRuleType
      end
      def application_gateway_redirect_type
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayRedirectType
      end
      def application_gateway_operational_state
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayOperationalState
      end
      def application_gateway_firewall_mode
        Azure::Network::Mgmt::V2019_02_01::Models::ApplicationGatewayFirewallMode
      end
      def resource_identity_type
        Azure::Network::Mgmt::V2019_02_01::Models::ResourceIdentityType
      end
      def provisioning_state
        Azure::Network::Mgmt::V2019_02_01::Models::ProvisioningState
      end
      def azure_firewall_rcaction_type
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallRCActionType
      end
      def azure_firewall_application_rule_protocol_type
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallApplicationRuleProtocolType
      end
      def azure_firewall_nat_rcaction_type
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNatRCActionType
      end
      def azure_firewall_network_rule_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallNetworkRuleProtocol
      end
      def azure_firewall_threat_intel_mode
        Azure::Network::Mgmt::V2019_02_01::Models::AzureFirewallThreatIntelMode
      end
      def ddos_custom_policy_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicyProtocol
      end
      def ddos_custom_policy_trigger_sensitivity_override
        Azure::Network::Mgmt::V2019_02_01::Models::DdosCustomPolicyTriggerSensitivityOverride
      end
      def authorization_use_status
        Azure::Network::Mgmt::V2019_02_01::Models::AuthorizationUseStatus
      end
      def express_route_circuit_peering_advertised_public_prefix_state
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      end
      def access
        Azure::Network::Mgmt::V2019_02_01::Models::Access
      end
      def express_route_peering_type
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePeeringType
      end
      def express_route_peering_state
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePeeringState
      end
      def circuit_connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::CircuitConnectionStatus
      end
      def express_route_circuit_peering_state
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitPeeringState
      end
      def express_route_circuit_sku_tier
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSkuTier
      end
      def express_route_circuit_sku_family
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteCircuitSkuFamily
      end
      def service_provider_provisioning_state
        Azure::Network::Mgmt::V2019_02_01::Models::ServiceProviderProvisioningState
      end
      def express_route_link_connector_type
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkConnectorType
      end
      def express_route_link_admin_state
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRouteLinkAdminState
      end
      def express_route_ports_encapsulation
        Azure::Network::Mgmt::V2019_02_01::Models::ExpressRoutePortsEncapsulation
      end
      def load_balancer_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerSkuName
      end
      def load_distribution
        Azure::Network::Mgmt::V2019_02_01::Models::LoadDistribution
      end
      def probe_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::ProbeProtocol
      end
      def load_balancer_outbound_rule_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::LoadBalancerOutboundRuleProtocol
      end
      def nat_gateway_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::NatGatewaySkuName
      end
      def network_operation_status
        Azure::Network::Mgmt::V2019_02_01::Models::NetworkOperationStatus
      end
      def authentication_method
        Azure::Network::Mgmt::V2019_02_01::Models::AuthenticationMethod
      end
      def effective_security_rule_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveSecurityRuleProtocol
      end
      def effective_route_source
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteSource
      end
      def effective_route_state
        Azure::Network::Mgmt::V2019_02_01::Models::EffectiveRouteState
      end
      def association_type
        Azure::Network::Mgmt::V2019_02_01::Models::AssociationType
      end
      def direction
        Azure::Network::Mgmt::V2019_02_01::Models::Direction
      end
      def ip_flow_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::IpFlowProtocol
      end
      def next_hop_type
        Azure::Network::Mgmt::V2019_02_01::Models::NextHopType
      end
      def pc_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::PcProtocol
      end
      def pc_status
        Azure::Network::Mgmt::V2019_02_01::Models::PcStatus
      end
      def pc_error
        Azure::Network::Mgmt::V2019_02_01::Models::PcError
      end
      def flow_log_format_type
        Azure::Network::Mgmt::V2019_02_01::Models::FlowLogFormatType
      end
      def protocol
        Azure::Network::Mgmt::V2019_02_01::Models::Protocol
      end
      def httpmethod
        Azure::Network::Mgmt::V2019_02_01::Models::HTTPMethod
      end
      def origin
        Azure::Network::Mgmt::V2019_02_01::Models::Origin
      end
      def severity
        Azure::Network::Mgmt::V2019_02_01::Models::Severity
      end
      def issue_type
        Azure::Network::Mgmt::V2019_02_01::Models::IssueType
      end
      def connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionStatus
      end
      def connection_monitor_source_status
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionMonitorSourceStatus
      end
      def connection_state
        Azure::Network::Mgmt::V2019_02_01::Models::ConnectionState
      end
      def evaluation_state
        Azure::Network::Mgmt::V2019_02_01::Models::EvaluationState
      end
      def verbosity_level
        Azure::Network::Mgmt::V2019_02_01::Models::VerbosityLevel
      end
      def public_ipprefix_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::PublicIPPrefixSkuName
      end
      def virtual_network_peering_state
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkPeeringState
      end
      def virtual_network_gateway_type
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayType
      end
      def vpn_type
        Azure::Network::Mgmt::V2019_02_01::Models::VpnType
      end
      def virtual_network_gateway_sku_name
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySkuName
      end
      def virtual_network_gateway_sku_tier
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewaySkuTier
      end
      def vpn_client_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::VpnClientProtocol
      end
      def ipsec_encryption
        Azure::Network::Mgmt::V2019_02_01::Models::IpsecEncryption
      end
      def ipsec_integrity
        Azure::Network::Mgmt::V2019_02_01::Models::IpsecIntegrity
      end
      def ike_encryption
        Azure::Network::Mgmt::V2019_02_01::Models::IkeEncryption
      end
      def ike_integrity
        Azure::Network::Mgmt::V2019_02_01::Models::IkeIntegrity
      end
      def dh_group
        Azure::Network::Mgmt::V2019_02_01::Models::DhGroup
      end
      def pfs_group
        Azure::Network::Mgmt::V2019_02_01::Models::PfsGroup
      end
      def bgp_peer_state
        Azure::Network::Mgmt::V2019_02_01::Models::BgpPeerState
      end
      def processor_architecture
        Azure::Network::Mgmt::V2019_02_01::Models::ProcessorArchitecture
      end
      def virtual_network_gateway_connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionStatus
      end
      def virtual_network_gateway_connection_type
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionType
      end
      def virtual_network_gateway_connection_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualNetworkGatewayConnectionProtocol
      end
      def office_traffic_category
        Azure::Network::Mgmt::V2019_02_01::Models::OfficeTrafficCategory
      end
      def vpn_gateway_tunneling_protocol
        Azure::Network::Mgmt::V2019_02_01::Models::VpnGatewayTunnelingProtocol
      end
      def vpn_connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::VpnConnectionStatus
      end
      def virtual_wan_security_provider_type
        Azure::Network::Mgmt::V2019_02_01::Models::VirtualWanSecurityProviderType
      end
      def tunnel_connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::TunnelConnectionStatus
      end
      def hub_virtual_network_connection_status
        Azure::Network::Mgmt::V2019_02_01::Models::HubVirtualNetworkConnectionStatus
      end
      def web_application_firewall_enabled_state
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallEnabledState
      end
      def web_application_firewall_mode
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallMode
      end
      def web_application_firewall_rule_type
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallRuleType
      end
      def web_application_firewall_match_variable
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallMatchVariable
      end
      def web_application_firewall_operator
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallOperator
      end
      def web_application_firewall_transform
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallTransform
      end
      def web_application_firewall_action
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallAction
      end
      def web_application_firewall_policy_resource_state
        Azure::Network::Mgmt::V2019_02_01::Models::WebApplicationFirewallPolicyResourceState
      end
    end
  end
end
