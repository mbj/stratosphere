module Stratosphere.EC2.NetworkInsightsAnalysis.PathComponentProperty (
        module Exports, PathComponentProperty(..), mkPathComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AdditionalDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisAclRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisPacketHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisRouteTableRouteProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisSecurityGroupRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.ExplanationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.TransitGatewayRouteTableRouteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathComponentProperty
  = PathComponentProperty {aclRule :: (Prelude.Maybe AnalysisAclRuleProperty),
                           additionalDetails :: (Prelude.Maybe [AdditionalDetailProperty]),
                           component :: (Prelude.Maybe AnalysisComponentProperty),
                           destinationVpc :: (Prelude.Maybe AnalysisComponentProperty),
                           elasticLoadBalancerListener :: (Prelude.Maybe AnalysisComponentProperty),
                           explanations :: (Prelude.Maybe [ExplanationProperty]),
                           inboundHeader :: (Prelude.Maybe AnalysisPacketHeaderProperty),
                           outboundHeader :: (Prelude.Maybe AnalysisPacketHeaderProperty),
                           routeTableRoute :: (Prelude.Maybe AnalysisRouteTableRouteProperty),
                           securityGroupRule :: (Prelude.Maybe AnalysisSecurityGroupRuleProperty),
                           sequenceNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                           serviceName :: (Prelude.Maybe (Value Prelude.Text)),
                           sourceVpc :: (Prelude.Maybe AnalysisComponentProperty),
                           subnet :: (Prelude.Maybe AnalysisComponentProperty),
                           transitGateway :: (Prelude.Maybe AnalysisComponentProperty),
                           transitGatewayRouteTableRoute :: (Prelude.Maybe TransitGatewayRouteTableRouteProperty),
                           vpc :: (Prelude.Maybe AnalysisComponentProperty)}
mkPathComponentProperty :: PathComponentProperty
mkPathComponentProperty
  = PathComponentProperty
      {aclRule = Prelude.Nothing, additionalDetails = Prelude.Nothing,
       component = Prelude.Nothing, destinationVpc = Prelude.Nothing,
       elasticLoadBalancerListener = Prelude.Nothing,
       explanations = Prelude.Nothing, inboundHeader = Prelude.Nothing,
       outboundHeader = Prelude.Nothing,
       routeTableRoute = Prelude.Nothing,
       securityGroupRule = Prelude.Nothing,
       sequenceNumber = Prelude.Nothing, serviceName = Prelude.Nothing,
       sourceVpc = Prelude.Nothing, subnet = Prelude.Nothing,
       transitGateway = Prelude.Nothing,
       transitGatewayRouteTableRoute = Prelude.Nothing,
       vpc = Prelude.Nothing}
instance ToResourceProperties PathComponentProperty where
  toResourceProperties PathComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.PathComponent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AclRule" Prelude.<$> aclRule,
                            (JSON..=) "AdditionalDetails" Prelude.<$> additionalDetails,
                            (JSON..=) "Component" Prelude.<$> component,
                            (JSON..=) "DestinationVpc" Prelude.<$> destinationVpc,
                            (JSON..=) "ElasticLoadBalancerListener"
                              Prelude.<$> elasticLoadBalancerListener,
                            (JSON..=) "Explanations" Prelude.<$> explanations,
                            (JSON..=) "InboundHeader" Prelude.<$> inboundHeader,
                            (JSON..=) "OutboundHeader" Prelude.<$> outboundHeader,
                            (JSON..=) "RouteTableRoute" Prelude.<$> routeTableRoute,
                            (JSON..=) "SecurityGroupRule" Prelude.<$> securityGroupRule,
                            (JSON..=) "SequenceNumber" Prelude.<$> sequenceNumber,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName,
                            (JSON..=) "SourceVpc" Prelude.<$> sourceVpc,
                            (JSON..=) "Subnet" Prelude.<$> subnet,
                            (JSON..=) "TransitGateway" Prelude.<$> transitGateway,
                            (JSON..=) "TransitGatewayRouteTableRoute"
                              Prelude.<$> transitGatewayRouteTableRoute,
                            (JSON..=) "Vpc" Prelude.<$> vpc])}
instance JSON.ToJSON PathComponentProperty where
  toJSON PathComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AclRule" Prelude.<$> aclRule,
               (JSON..=) "AdditionalDetails" Prelude.<$> additionalDetails,
               (JSON..=) "Component" Prelude.<$> component,
               (JSON..=) "DestinationVpc" Prelude.<$> destinationVpc,
               (JSON..=) "ElasticLoadBalancerListener"
                 Prelude.<$> elasticLoadBalancerListener,
               (JSON..=) "Explanations" Prelude.<$> explanations,
               (JSON..=) "InboundHeader" Prelude.<$> inboundHeader,
               (JSON..=) "OutboundHeader" Prelude.<$> outboundHeader,
               (JSON..=) "RouteTableRoute" Prelude.<$> routeTableRoute,
               (JSON..=) "SecurityGroupRule" Prelude.<$> securityGroupRule,
               (JSON..=) "SequenceNumber" Prelude.<$> sequenceNumber,
               (JSON..=) "ServiceName" Prelude.<$> serviceName,
               (JSON..=) "SourceVpc" Prelude.<$> sourceVpc,
               (JSON..=) "Subnet" Prelude.<$> subnet,
               (JSON..=) "TransitGateway" Prelude.<$> transitGateway,
               (JSON..=) "TransitGatewayRouteTableRoute"
                 Prelude.<$> transitGatewayRouteTableRoute,
               (JSON..=) "Vpc" Prelude.<$> vpc]))
instance Property "AclRule" PathComponentProperty where
  type PropertyType "AclRule" PathComponentProperty = AnalysisAclRuleProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {aclRule = Prelude.pure newValue, ..}
instance Property "AdditionalDetails" PathComponentProperty where
  type PropertyType "AdditionalDetails" PathComponentProperty = [AdditionalDetailProperty]
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {additionalDetails = Prelude.pure newValue, ..}
instance Property "Component" PathComponentProperty where
  type PropertyType "Component" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {component = Prelude.pure newValue, ..}
instance Property "DestinationVpc" PathComponentProperty where
  type PropertyType "DestinationVpc" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {destinationVpc = Prelude.pure newValue, ..}
instance Property "ElasticLoadBalancerListener" PathComponentProperty where
  type PropertyType "ElasticLoadBalancerListener" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {elasticLoadBalancerListener = Prelude.pure newValue, ..}
instance Property "Explanations" PathComponentProperty where
  type PropertyType "Explanations" PathComponentProperty = [ExplanationProperty]
  set newValue PathComponentProperty {..}
    = PathComponentProperty {explanations = Prelude.pure newValue, ..}
instance Property "InboundHeader" PathComponentProperty where
  type PropertyType "InboundHeader" PathComponentProperty = AnalysisPacketHeaderProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {inboundHeader = Prelude.pure newValue, ..}
instance Property "OutboundHeader" PathComponentProperty where
  type PropertyType "OutboundHeader" PathComponentProperty = AnalysisPacketHeaderProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {outboundHeader = Prelude.pure newValue, ..}
instance Property "RouteTableRoute" PathComponentProperty where
  type PropertyType "RouteTableRoute" PathComponentProperty = AnalysisRouteTableRouteProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {routeTableRoute = Prelude.pure newValue, ..}
instance Property "SecurityGroupRule" PathComponentProperty where
  type PropertyType "SecurityGroupRule" PathComponentProperty = AnalysisSecurityGroupRuleProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {securityGroupRule = Prelude.pure newValue, ..}
instance Property "SequenceNumber" PathComponentProperty where
  type PropertyType "SequenceNumber" PathComponentProperty = Value Prelude.Integer
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {sequenceNumber = Prelude.pure newValue, ..}
instance Property "ServiceName" PathComponentProperty where
  type PropertyType "ServiceName" PathComponentProperty = Value Prelude.Text
  set newValue PathComponentProperty {..}
    = PathComponentProperty {serviceName = Prelude.pure newValue, ..}
instance Property "SourceVpc" PathComponentProperty where
  type PropertyType "SourceVpc" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {sourceVpc = Prelude.pure newValue, ..}
instance Property "Subnet" PathComponentProperty where
  type PropertyType "Subnet" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {subnet = Prelude.pure newValue, ..}
instance Property "TransitGateway" PathComponentProperty where
  type PropertyType "TransitGateway" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {transitGateway = Prelude.pure newValue, ..}
instance Property "TransitGatewayRouteTableRoute" PathComponentProperty where
  type PropertyType "TransitGatewayRouteTableRoute" PathComponentProperty = TransitGatewayRouteTableRouteProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty
        {transitGatewayRouteTableRoute = Prelude.pure newValue, ..}
instance Property "Vpc" PathComponentProperty where
  type PropertyType "Vpc" PathComponentProperty = AnalysisComponentProperty
  set newValue PathComponentProperty {..}
    = PathComponentProperty {vpc = Prelude.pure newValue, ..}