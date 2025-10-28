module Stratosphere.EC2.NetworkInsightsAnalysis.ExplanationProperty (
        module Exports, ExplanationProperty(..), mkExplanationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisAclRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisLoadBalancerListenerProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisLoadBalancerTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisRouteTableRouteProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisSecurityGroupRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.PortRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.TransitGatewayRouteTableRouteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExplanationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html>
    ExplanationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-acl>
                         acl :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-aclrule>
                         aclRule :: (Prelude.Maybe AnalysisAclRuleProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-address>
                         address :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-addresses>
                         addresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-attachedto>
                         attachedTo :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-availabilityzones>
                         availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-cidrs>
                         cidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-classicloadbalancerlistener>
                         classicLoadBalancerListener :: (Prelude.Maybe AnalysisLoadBalancerListenerProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-component>
                         component :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-componentaccount>
                         componentAccount :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-componentregion>
                         componentRegion :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-customergateway>
                         customerGateway :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-destination>
                         destination :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-destinationvpc>
                         destinationVpc :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-direction>
                         direction :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-elasticloadbalancerlistener>
                         elasticLoadBalancerListener :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-explanationcode>
                         explanationCode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-ingressroutetable>
                         ingressRouteTable :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-internetgateway>
                         internetGateway :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancerarn>
                         loadBalancerArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancerlistenerport>
                         loadBalancerListenerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertarget>
                         loadBalancerTarget :: (Prelude.Maybe AnalysisLoadBalancerTargetProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetgroup>
                         loadBalancerTargetGroup :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetgroups>
                         loadBalancerTargetGroups :: (Prelude.Maybe [AnalysisComponentProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetport>
                         loadBalancerTargetPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-missingcomponent>
                         missingComponent :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-natgateway>
                         natGateway :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-networkinterface>
                         networkInterface :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-packetfield>
                         packetField :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-port>
                         port :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-portranges>
                         portRanges :: (Prelude.Maybe [PortRangeProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-prefixlist>
                         prefixList :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-protocols>
                         protocols :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-routetable>
                         routeTable :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-routetableroute>
                         routeTableRoute :: (Prelude.Maybe AnalysisRouteTableRouteProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygroup>
                         securityGroup :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygrouprule>
                         securityGroupRule :: (Prelude.Maybe AnalysisSecurityGroupRuleProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygroups>
                         securityGroups :: (Prelude.Maybe [AnalysisComponentProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-sourcevpc>
                         sourceVpc :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-state>
                         state :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-subnet>
                         subnet :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-subnetroutetable>
                         subnetRouteTable :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgateway>
                         transitGateway :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayattachment>
                         transitGatewayAttachment :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayroutetable>
                         transitGatewayRouteTable :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayroutetableroute>
                         transitGatewayRouteTableRoute :: (Prelude.Maybe TransitGatewayRouteTableRouteProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpc>
                         vpc :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpcpeeringconnection>
                         vpcPeeringConnection :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpnconnection>
                         vpnConnection :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpngateway>
                         vpnGateway :: (Prelude.Maybe AnalysisComponentProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpcendpoint>
                         vpcEndpoint :: (Prelude.Maybe AnalysisComponentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExplanationProperty :: ExplanationProperty
mkExplanationProperty
  = ExplanationProperty
      {haddock_workaround_ = (), acl = Prelude.Nothing,
       aclRule = Prelude.Nothing, address = Prelude.Nothing,
       addresses = Prelude.Nothing, attachedTo = Prelude.Nothing,
       availabilityZones = Prelude.Nothing, cidrs = Prelude.Nothing,
       classicLoadBalancerListener = Prelude.Nothing,
       component = Prelude.Nothing, componentAccount = Prelude.Nothing,
       componentRegion = Prelude.Nothing,
       customerGateway = Prelude.Nothing, destination = Prelude.Nothing,
       destinationVpc = Prelude.Nothing, direction = Prelude.Nothing,
       elasticLoadBalancerListener = Prelude.Nothing,
       explanationCode = Prelude.Nothing,
       ingressRouteTable = Prelude.Nothing,
       internetGateway = Prelude.Nothing,
       loadBalancerArn = Prelude.Nothing,
       loadBalancerListenerPort = Prelude.Nothing,
       loadBalancerTarget = Prelude.Nothing,
       loadBalancerTargetGroup = Prelude.Nothing,
       loadBalancerTargetGroups = Prelude.Nothing,
       loadBalancerTargetPort = Prelude.Nothing,
       missingComponent = Prelude.Nothing, natGateway = Prelude.Nothing,
       networkInterface = Prelude.Nothing, packetField = Prelude.Nothing,
       port = Prelude.Nothing, portRanges = Prelude.Nothing,
       prefixList = Prelude.Nothing, protocols = Prelude.Nothing,
       routeTable = Prelude.Nothing, routeTableRoute = Prelude.Nothing,
       securityGroup = Prelude.Nothing,
       securityGroupRule = Prelude.Nothing,
       securityGroups = Prelude.Nothing, sourceVpc = Prelude.Nothing,
       state = Prelude.Nothing, subnet = Prelude.Nothing,
       subnetRouteTable = Prelude.Nothing,
       transitGateway = Prelude.Nothing,
       transitGatewayAttachment = Prelude.Nothing,
       transitGatewayRouteTable = Prelude.Nothing,
       transitGatewayRouteTableRoute = Prelude.Nothing,
       vpc = Prelude.Nothing, vpcPeeringConnection = Prelude.Nothing,
       vpnConnection = Prelude.Nothing, vpnGateway = Prelude.Nothing,
       vpcEndpoint = Prelude.Nothing}
instance ToResourceProperties ExplanationProperty where
  toResourceProperties ExplanationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.Explanation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Acl" Prelude.<$> acl,
                            (JSON..=) "AclRule" Prelude.<$> aclRule,
                            (JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Addresses" Prelude.<$> addresses,
                            (JSON..=) "AttachedTo" Prelude.<$> attachedTo,
                            (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                            (JSON..=) "Cidrs" Prelude.<$> cidrs,
                            (JSON..=) "ClassicLoadBalancerListener"
                              Prelude.<$> classicLoadBalancerListener,
                            (JSON..=) "Component" Prelude.<$> component,
                            (JSON..=) "ComponentAccount" Prelude.<$> componentAccount,
                            (JSON..=) "ComponentRegion" Prelude.<$> componentRegion,
                            (JSON..=) "CustomerGateway" Prelude.<$> customerGateway,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "DestinationVpc" Prelude.<$> destinationVpc,
                            (JSON..=) "Direction" Prelude.<$> direction,
                            (JSON..=) "ElasticLoadBalancerListener"
                              Prelude.<$> elasticLoadBalancerListener,
                            (JSON..=) "ExplanationCode" Prelude.<$> explanationCode,
                            (JSON..=) "IngressRouteTable" Prelude.<$> ingressRouteTable,
                            (JSON..=) "InternetGateway" Prelude.<$> internetGateway,
                            (JSON..=) "LoadBalancerArn" Prelude.<$> loadBalancerArn,
                            (JSON..=) "LoadBalancerListenerPort"
                              Prelude.<$> loadBalancerListenerPort,
                            (JSON..=) "LoadBalancerTarget" Prelude.<$> loadBalancerTarget,
                            (JSON..=) "LoadBalancerTargetGroup"
                              Prelude.<$> loadBalancerTargetGroup,
                            (JSON..=) "LoadBalancerTargetGroups"
                              Prelude.<$> loadBalancerTargetGroups,
                            (JSON..=) "LoadBalancerTargetPort"
                              Prelude.<$> loadBalancerTargetPort,
                            (JSON..=) "MissingComponent" Prelude.<$> missingComponent,
                            (JSON..=) "NatGateway" Prelude.<$> natGateway,
                            (JSON..=) "NetworkInterface" Prelude.<$> networkInterface,
                            (JSON..=) "PacketField" Prelude.<$> packetField,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "PortRanges" Prelude.<$> portRanges,
                            (JSON..=) "PrefixList" Prelude.<$> prefixList,
                            (JSON..=) "Protocols" Prelude.<$> protocols,
                            (JSON..=) "RouteTable" Prelude.<$> routeTable,
                            (JSON..=) "RouteTableRoute" Prelude.<$> routeTableRoute,
                            (JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
                            (JSON..=) "SecurityGroupRule" Prelude.<$> securityGroupRule,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SourceVpc" Prelude.<$> sourceVpc,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "Subnet" Prelude.<$> subnet,
                            (JSON..=) "SubnetRouteTable" Prelude.<$> subnetRouteTable,
                            (JSON..=) "TransitGateway" Prelude.<$> transitGateway,
                            (JSON..=) "TransitGatewayAttachment"
                              Prelude.<$> transitGatewayAttachment,
                            (JSON..=) "TransitGatewayRouteTable"
                              Prelude.<$> transitGatewayRouteTable,
                            (JSON..=) "TransitGatewayRouteTableRoute"
                              Prelude.<$> transitGatewayRouteTableRoute,
                            (JSON..=) "Vpc" Prelude.<$> vpc,
                            (JSON..=) "VpcPeeringConnection" Prelude.<$> vpcPeeringConnection,
                            (JSON..=) "VpnConnection" Prelude.<$> vpnConnection,
                            (JSON..=) "VpnGateway" Prelude.<$> vpnGateway,
                            (JSON..=) "vpcEndpoint" Prelude.<$> vpcEndpoint])}
instance JSON.ToJSON ExplanationProperty where
  toJSON ExplanationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Acl" Prelude.<$> acl,
               (JSON..=) "AclRule" Prelude.<$> aclRule,
               (JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Addresses" Prelude.<$> addresses,
               (JSON..=) "AttachedTo" Prelude.<$> attachedTo,
               (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
               (JSON..=) "Cidrs" Prelude.<$> cidrs,
               (JSON..=) "ClassicLoadBalancerListener"
                 Prelude.<$> classicLoadBalancerListener,
               (JSON..=) "Component" Prelude.<$> component,
               (JSON..=) "ComponentAccount" Prelude.<$> componentAccount,
               (JSON..=) "ComponentRegion" Prelude.<$> componentRegion,
               (JSON..=) "CustomerGateway" Prelude.<$> customerGateway,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "DestinationVpc" Prelude.<$> destinationVpc,
               (JSON..=) "Direction" Prelude.<$> direction,
               (JSON..=) "ElasticLoadBalancerListener"
                 Prelude.<$> elasticLoadBalancerListener,
               (JSON..=) "ExplanationCode" Prelude.<$> explanationCode,
               (JSON..=) "IngressRouteTable" Prelude.<$> ingressRouteTable,
               (JSON..=) "InternetGateway" Prelude.<$> internetGateway,
               (JSON..=) "LoadBalancerArn" Prelude.<$> loadBalancerArn,
               (JSON..=) "LoadBalancerListenerPort"
                 Prelude.<$> loadBalancerListenerPort,
               (JSON..=) "LoadBalancerTarget" Prelude.<$> loadBalancerTarget,
               (JSON..=) "LoadBalancerTargetGroup"
                 Prelude.<$> loadBalancerTargetGroup,
               (JSON..=) "LoadBalancerTargetGroups"
                 Prelude.<$> loadBalancerTargetGroups,
               (JSON..=) "LoadBalancerTargetPort"
                 Prelude.<$> loadBalancerTargetPort,
               (JSON..=) "MissingComponent" Prelude.<$> missingComponent,
               (JSON..=) "NatGateway" Prelude.<$> natGateway,
               (JSON..=) "NetworkInterface" Prelude.<$> networkInterface,
               (JSON..=) "PacketField" Prelude.<$> packetField,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "PortRanges" Prelude.<$> portRanges,
               (JSON..=) "PrefixList" Prelude.<$> prefixList,
               (JSON..=) "Protocols" Prelude.<$> protocols,
               (JSON..=) "RouteTable" Prelude.<$> routeTable,
               (JSON..=) "RouteTableRoute" Prelude.<$> routeTableRoute,
               (JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
               (JSON..=) "SecurityGroupRule" Prelude.<$> securityGroupRule,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SourceVpc" Prelude.<$> sourceVpc,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "Subnet" Prelude.<$> subnet,
               (JSON..=) "SubnetRouteTable" Prelude.<$> subnetRouteTable,
               (JSON..=) "TransitGateway" Prelude.<$> transitGateway,
               (JSON..=) "TransitGatewayAttachment"
                 Prelude.<$> transitGatewayAttachment,
               (JSON..=) "TransitGatewayRouteTable"
                 Prelude.<$> transitGatewayRouteTable,
               (JSON..=) "TransitGatewayRouteTableRoute"
                 Prelude.<$> transitGatewayRouteTableRoute,
               (JSON..=) "Vpc" Prelude.<$> vpc,
               (JSON..=) "VpcPeeringConnection" Prelude.<$> vpcPeeringConnection,
               (JSON..=) "VpnConnection" Prelude.<$> vpnConnection,
               (JSON..=) "VpnGateway" Prelude.<$> vpnGateway,
               (JSON..=) "vpcEndpoint" Prelude.<$> vpcEndpoint]))
instance Property "Acl" ExplanationProperty where
  type PropertyType "Acl" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {acl = Prelude.pure newValue, ..}
instance Property "AclRule" ExplanationProperty where
  type PropertyType "AclRule" ExplanationProperty = AnalysisAclRuleProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {aclRule = Prelude.pure newValue, ..}
instance Property "Address" ExplanationProperty where
  type PropertyType "Address" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {address = Prelude.pure newValue, ..}
instance Property "Addresses" ExplanationProperty where
  type PropertyType "Addresses" ExplanationProperty = ValueList Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {addresses = Prelude.pure newValue, ..}
instance Property "AttachedTo" ExplanationProperty where
  type PropertyType "AttachedTo" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {attachedTo = Prelude.pure newValue, ..}
instance Property "AvailabilityZones" ExplanationProperty where
  type PropertyType "AvailabilityZones" ExplanationProperty = ValueList Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {availabilityZones = Prelude.pure newValue, ..}
instance Property "Cidrs" ExplanationProperty where
  type PropertyType "Cidrs" ExplanationProperty = ValueList Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {cidrs = Prelude.pure newValue, ..}
instance Property "ClassicLoadBalancerListener" ExplanationProperty where
  type PropertyType "ClassicLoadBalancerListener" ExplanationProperty = AnalysisLoadBalancerListenerProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {classicLoadBalancerListener = Prelude.pure newValue, ..}
instance Property "Component" ExplanationProperty where
  type PropertyType "Component" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {component = Prelude.pure newValue, ..}
instance Property "ComponentAccount" ExplanationProperty where
  type PropertyType "ComponentAccount" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {componentAccount = Prelude.pure newValue, ..}
instance Property "ComponentRegion" ExplanationProperty where
  type PropertyType "ComponentRegion" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {componentRegion = Prelude.pure newValue, ..}
instance Property "CustomerGateway" ExplanationProperty where
  type PropertyType "CustomerGateway" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {customerGateway = Prelude.pure newValue, ..}
instance Property "Destination" ExplanationProperty where
  type PropertyType "Destination" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {destination = Prelude.pure newValue, ..}
instance Property "DestinationVpc" ExplanationProperty where
  type PropertyType "DestinationVpc" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {destinationVpc = Prelude.pure newValue, ..}
instance Property "Direction" ExplanationProperty where
  type PropertyType "Direction" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {direction = Prelude.pure newValue, ..}
instance Property "ElasticLoadBalancerListener" ExplanationProperty where
  type PropertyType "ElasticLoadBalancerListener" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {elasticLoadBalancerListener = Prelude.pure newValue, ..}
instance Property "ExplanationCode" ExplanationProperty where
  type PropertyType "ExplanationCode" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {explanationCode = Prelude.pure newValue, ..}
instance Property "IngressRouteTable" ExplanationProperty where
  type PropertyType "IngressRouteTable" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {ingressRouteTable = Prelude.pure newValue, ..}
instance Property "InternetGateway" ExplanationProperty where
  type PropertyType "InternetGateway" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {internetGateway = Prelude.pure newValue, ..}
instance Property "LoadBalancerArn" ExplanationProperty where
  type PropertyType "LoadBalancerArn" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {loadBalancerArn = Prelude.pure newValue, ..}
instance Property "LoadBalancerListenerPort" ExplanationProperty where
  type PropertyType "LoadBalancerListenerPort" ExplanationProperty = Value Prelude.Integer
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {loadBalancerListenerPort = Prelude.pure newValue, ..}
instance Property "LoadBalancerTarget" ExplanationProperty where
  type PropertyType "LoadBalancerTarget" ExplanationProperty = AnalysisLoadBalancerTargetProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {loadBalancerTarget = Prelude.pure newValue, ..}
instance Property "LoadBalancerTargetGroup" ExplanationProperty where
  type PropertyType "LoadBalancerTargetGroup" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {loadBalancerTargetGroup = Prelude.pure newValue, ..}
instance Property "LoadBalancerTargetGroups" ExplanationProperty where
  type PropertyType "LoadBalancerTargetGroups" ExplanationProperty = [AnalysisComponentProperty]
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {loadBalancerTargetGroups = Prelude.pure newValue, ..}
instance Property "LoadBalancerTargetPort" ExplanationProperty where
  type PropertyType "LoadBalancerTargetPort" ExplanationProperty = Value Prelude.Integer
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {loadBalancerTargetPort = Prelude.pure newValue, ..}
instance Property "MissingComponent" ExplanationProperty where
  type PropertyType "MissingComponent" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {missingComponent = Prelude.pure newValue, ..}
instance Property "NatGateway" ExplanationProperty where
  type PropertyType "NatGateway" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {natGateway = Prelude.pure newValue, ..}
instance Property "NetworkInterface" ExplanationProperty where
  type PropertyType "NetworkInterface" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {networkInterface = Prelude.pure newValue, ..}
instance Property "PacketField" ExplanationProperty where
  type PropertyType "PacketField" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {packetField = Prelude.pure newValue, ..}
instance Property "Port" ExplanationProperty where
  type PropertyType "Port" ExplanationProperty = Value Prelude.Integer
  set newValue ExplanationProperty {..}
    = ExplanationProperty {port = Prelude.pure newValue, ..}
instance Property "PortRanges" ExplanationProperty where
  type PropertyType "PortRanges" ExplanationProperty = [PortRangeProperty]
  set newValue ExplanationProperty {..}
    = ExplanationProperty {portRanges = Prelude.pure newValue, ..}
instance Property "PrefixList" ExplanationProperty where
  type PropertyType "PrefixList" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {prefixList = Prelude.pure newValue, ..}
instance Property "Protocols" ExplanationProperty where
  type PropertyType "Protocols" ExplanationProperty = ValueList Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {protocols = Prelude.pure newValue, ..}
instance Property "RouteTable" ExplanationProperty where
  type PropertyType "RouteTable" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {routeTable = Prelude.pure newValue, ..}
instance Property "RouteTableRoute" ExplanationProperty where
  type PropertyType "RouteTableRoute" ExplanationProperty = AnalysisRouteTableRouteProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {routeTableRoute = Prelude.pure newValue, ..}
instance Property "SecurityGroup" ExplanationProperty where
  type PropertyType "SecurityGroup" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {securityGroup = Prelude.pure newValue, ..}
instance Property "SecurityGroupRule" ExplanationProperty where
  type PropertyType "SecurityGroupRule" ExplanationProperty = AnalysisSecurityGroupRuleProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {securityGroupRule = Prelude.pure newValue, ..}
instance Property "SecurityGroups" ExplanationProperty where
  type PropertyType "SecurityGroups" ExplanationProperty = [AnalysisComponentProperty]
  set newValue ExplanationProperty {..}
    = ExplanationProperty {securityGroups = Prelude.pure newValue, ..}
instance Property "SourceVpc" ExplanationProperty where
  type PropertyType "SourceVpc" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {sourceVpc = Prelude.pure newValue, ..}
instance Property "State" ExplanationProperty where
  type PropertyType "State" ExplanationProperty = Value Prelude.Text
  set newValue ExplanationProperty {..}
    = ExplanationProperty {state = Prelude.pure newValue, ..}
instance Property "Subnet" ExplanationProperty where
  type PropertyType "Subnet" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {subnet = Prelude.pure newValue, ..}
instance Property "SubnetRouteTable" ExplanationProperty where
  type PropertyType "SubnetRouteTable" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {subnetRouteTable = Prelude.pure newValue, ..}
instance Property "TransitGateway" ExplanationProperty where
  type PropertyType "TransitGateway" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {transitGateway = Prelude.pure newValue, ..}
instance Property "TransitGatewayAttachment" ExplanationProperty where
  type PropertyType "TransitGatewayAttachment" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {transitGatewayAttachment = Prelude.pure newValue, ..}
instance Property "TransitGatewayRouteTable" ExplanationProperty where
  type PropertyType "TransitGatewayRouteTable" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {transitGatewayRouteTable = Prelude.pure newValue, ..}
instance Property "TransitGatewayRouteTableRoute" ExplanationProperty where
  type PropertyType "TransitGatewayRouteTableRoute" ExplanationProperty = TransitGatewayRouteTableRouteProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {transitGatewayRouteTableRoute = Prelude.pure newValue, ..}
instance Property "Vpc" ExplanationProperty where
  type PropertyType "Vpc" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {vpc = Prelude.pure newValue, ..}
instance Property "VpcPeeringConnection" ExplanationProperty where
  type PropertyType "VpcPeeringConnection" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty
        {vpcPeeringConnection = Prelude.pure newValue, ..}
instance Property "VpnConnection" ExplanationProperty where
  type PropertyType "VpnConnection" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {vpnConnection = Prelude.pure newValue, ..}
instance Property "VpnGateway" ExplanationProperty where
  type PropertyType "VpnGateway" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {vpnGateway = Prelude.pure newValue, ..}
instance Property "vpcEndpoint" ExplanationProperty where
  type PropertyType "vpcEndpoint" ExplanationProperty = AnalysisComponentProperty
  set newValue ExplanationProperty {..}
    = ExplanationProperty {vpcEndpoint = Prelude.pure newValue, ..}