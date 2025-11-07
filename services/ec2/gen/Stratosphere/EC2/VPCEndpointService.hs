module Stratosphere.EC2.VPCEndpointService (
        VPCEndpointService(..), mkVPCEndpointService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPCEndpointService
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html>
    VPCEndpointService {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired>
                        acceptanceRequired :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-contributorinsightsenabled>
                        contributorInsightsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-gatewayloadbalancerarns>
                        gatewayLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns>
                        networkLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-payerresponsibility>
                        payerResponsibility :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-supportedipaddresstypes>
                        supportedIpAddressTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-supportedregions>
                        supportedRegions :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCEndpointService :: VPCEndpointService
mkVPCEndpointService
  = VPCEndpointService
      {haddock_workaround_ = (), acceptanceRequired = Prelude.Nothing,
       contributorInsightsEnabled = Prelude.Nothing,
       gatewayLoadBalancerArns = Prelude.Nothing,
       networkLoadBalancerArns = Prelude.Nothing,
       payerResponsibility = Prelude.Nothing,
       supportedIpAddressTypes = Prelude.Nothing,
       supportedRegions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VPCEndpointService where
  toResourceProperties VPCEndpointService {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpointService",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceptanceRequired" Prelude.<$> acceptanceRequired,
                            (JSON..=) "ContributorInsightsEnabled"
                              Prelude.<$> contributorInsightsEnabled,
                            (JSON..=) "GatewayLoadBalancerArns"
                              Prelude.<$> gatewayLoadBalancerArns,
                            (JSON..=) "NetworkLoadBalancerArns"
                              Prelude.<$> networkLoadBalancerArns,
                            (JSON..=) "PayerResponsibility" Prelude.<$> payerResponsibility,
                            (JSON..=) "SupportedIpAddressTypes"
                              Prelude.<$> supportedIpAddressTypes,
                            (JSON..=) "SupportedRegions" Prelude.<$> supportedRegions,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON VPCEndpointService where
  toJSON VPCEndpointService {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcceptanceRequired" Prelude.<$> acceptanceRequired,
               (JSON..=) "ContributorInsightsEnabled"
                 Prelude.<$> contributorInsightsEnabled,
               (JSON..=) "GatewayLoadBalancerArns"
                 Prelude.<$> gatewayLoadBalancerArns,
               (JSON..=) "NetworkLoadBalancerArns"
                 Prelude.<$> networkLoadBalancerArns,
               (JSON..=) "PayerResponsibility" Prelude.<$> payerResponsibility,
               (JSON..=) "SupportedIpAddressTypes"
                 Prelude.<$> supportedIpAddressTypes,
               (JSON..=) "SupportedRegions" Prelude.<$> supportedRegions,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AcceptanceRequired" VPCEndpointService where
  type PropertyType "AcceptanceRequired" VPCEndpointService = Value Prelude.Bool
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {acceptanceRequired = Prelude.pure newValue, ..}
instance Property "ContributorInsightsEnabled" VPCEndpointService where
  type PropertyType "ContributorInsightsEnabled" VPCEndpointService = Value Prelude.Bool
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {contributorInsightsEnabled = Prelude.pure newValue, ..}
instance Property "GatewayLoadBalancerArns" VPCEndpointService where
  type PropertyType "GatewayLoadBalancerArns" VPCEndpointService = ValueList Prelude.Text
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {gatewayLoadBalancerArns = Prelude.pure newValue, ..}
instance Property "NetworkLoadBalancerArns" VPCEndpointService where
  type PropertyType "NetworkLoadBalancerArns" VPCEndpointService = ValueList Prelude.Text
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {networkLoadBalancerArns = Prelude.pure newValue, ..}
instance Property "PayerResponsibility" VPCEndpointService where
  type PropertyType "PayerResponsibility" VPCEndpointService = Value Prelude.Text
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {payerResponsibility = Prelude.pure newValue, ..}
instance Property "SupportedIpAddressTypes" VPCEndpointService where
  type PropertyType "SupportedIpAddressTypes" VPCEndpointService = ValueList Prelude.Text
  set newValue VPCEndpointService {..}
    = VPCEndpointService
        {supportedIpAddressTypes = Prelude.pure newValue, ..}
instance Property "SupportedRegions" VPCEndpointService where
  type PropertyType "SupportedRegions" VPCEndpointService = ValueList Prelude.Text
  set newValue VPCEndpointService {..}
    = VPCEndpointService {supportedRegions = Prelude.pure newValue, ..}
instance Property "Tags" VPCEndpointService where
  type PropertyType "Tags" VPCEndpointService = [Tag]
  set newValue VPCEndpointService {..}
    = VPCEndpointService {tags = Prelude.pure newValue, ..}