module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisRouteTableRouteProperty (
        AnalysisRouteTableRouteProperty(..),
        mkAnalysisRouteTableRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisRouteTableRouteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html>
    AnalysisRouteTableRouteProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-natgatewayid>
                                     natGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-networkinterfaceid>
                                     networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-origin>
                                     origin :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-state>
                                     state :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-transitgatewayid>
                                     transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-vpcpeeringconnectionid>
                                     vpcPeeringConnectionId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-destinationcidr>
                                     destinationCidr :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-destinationprefixlistid>
                                     destinationPrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-egressonlyinternetgatewayid>
                                     egressOnlyInternetGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-gatewayid>
                                     gatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisroutetableroute.html#cfn-ec2-networkinsightsanalysis-analysisroutetableroute-instanceid>
                                     instanceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisRouteTableRouteProperty ::
  AnalysisRouteTableRouteProperty
mkAnalysisRouteTableRouteProperty
  = AnalysisRouteTableRouteProperty
      {haddock_workaround_ = (), natGatewayId = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing, origin = Prelude.Nothing,
       state = Prelude.Nothing, transitGatewayId = Prelude.Nothing,
       vpcPeeringConnectionId = Prelude.Nothing,
       destinationCidr = Prelude.Nothing,
       destinationPrefixListId = Prelude.Nothing,
       egressOnlyInternetGatewayId = Prelude.Nothing,
       gatewayId = Prelude.Nothing, instanceId = Prelude.Nothing}
instance ToResourceProperties AnalysisRouteTableRouteProperty where
  toResourceProperties AnalysisRouteTableRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisRouteTableRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NatGatewayId" Prelude.<$> natGatewayId,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "Origin" Prelude.<$> origin,
                            (JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                            (JSON..=) "VpcPeeringConnectionId"
                              Prelude.<$> vpcPeeringConnectionId,
                            (JSON..=) "destinationCidr" Prelude.<$> destinationCidr,
                            (JSON..=) "destinationPrefixListId"
                              Prelude.<$> destinationPrefixListId,
                            (JSON..=) "egressOnlyInternetGatewayId"
                              Prelude.<$> egressOnlyInternetGatewayId,
                            (JSON..=) "gatewayId" Prelude.<$> gatewayId,
                            (JSON..=) "instanceId" Prelude.<$> instanceId])}
instance JSON.ToJSON AnalysisRouteTableRouteProperty where
  toJSON AnalysisRouteTableRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NatGatewayId" Prelude.<$> natGatewayId,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "Origin" Prelude.<$> origin,
               (JSON..=) "State" Prelude.<$> state,
               (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
               (JSON..=) "VpcPeeringConnectionId"
                 Prelude.<$> vpcPeeringConnectionId,
               (JSON..=) "destinationCidr" Prelude.<$> destinationCidr,
               (JSON..=) "destinationPrefixListId"
                 Prelude.<$> destinationPrefixListId,
               (JSON..=) "egressOnlyInternetGatewayId"
                 Prelude.<$> egressOnlyInternetGatewayId,
               (JSON..=) "gatewayId" Prelude.<$> gatewayId,
               (JSON..=) "instanceId" Prelude.<$> instanceId]))
instance Property "NatGatewayId" AnalysisRouteTableRouteProperty where
  type PropertyType "NatGatewayId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {natGatewayId = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" AnalysisRouteTableRouteProperty where
  type PropertyType "NetworkInterfaceId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "Origin" AnalysisRouteTableRouteProperty where
  type PropertyType "Origin" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {origin = Prelude.pure newValue, ..}
instance Property "State" AnalysisRouteTableRouteProperty where
  type PropertyType "State" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {state = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" AnalysisRouteTableRouteProperty where
  type PropertyType "TransitGatewayId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {transitGatewayId = Prelude.pure newValue, ..}
instance Property "VpcPeeringConnectionId" AnalysisRouteTableRouteProperty where
  type PropertyType "VpcPeeringConnectionId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {vpcPeeringConnectionId = Prelude.pure newValue, ..}
instance Property "destinationCidr" AnalysisRouteTableRouteProperty where
  type PropertyType "destinationCidr" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {destinationCidr = Prelude.pure newValue, ..}
instance Property "destinationPrefixListId" AnalysisRouteTableRouteProperty where
  type PropertyType "destinationPrefixListId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {destinationPrefixListId = Prelude.pure newValue, ..}
instance Property "egressOnlyInternetGatewayId" AnalysisRouteTableRouteProperty where
  type PropertyType "egressOnlyInternetGatewayId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {egressOnlyInternetGatewayId = Prelude.pure newValue, ..}
instance Property "gatewayId" AnalysisRouteTableRouteProperty where
  type PropertyType "gatewayId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {gatewayId = Prelude.pure newValue, ..}
instance Property "instanceId" AnalysisRouteTableRouteProperty where
  type PropertyType "instanceId" AnalysisRouteTableRouteProperty = Value Prelude.Text
  set newValue AnalysisRouteTableRouteProperty {..}
    = AnalysisRouteTableRouteProperty
        {instanceId = Prelude.pure newValue, ..}