module Stratosphere.EC2.VPCEndpointService (
        VPCEndpointService(..), mkVPCEndpointService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpointService
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html>
    VPCEndpointService {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-acceptancerequired>
                        acceptanceRequired :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-contributorinsightsenabled>
                        contributorInsightsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-gatewayloadbalancerarns>
                        gatewayLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-networkloadbalancerarns>
                        networkLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointservice.html#cfn-ec2-vpcendpointservice-payerresponsibility>
                        payerResponsibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCEndpointService :: VPCEndpointService
mkVPCEndpointService
  = VPCEndpointService
      {acceptanceRequired = Prelude.Nothing,
       contributorInsightsEnabled = Prelude.Nothing,
       gatewayLoadBalancerArns = Prelude.Nothing,
       networkLoadBalancerArns = Prelude.Nothing,
       payerResponsibility = Prelude.Nothing}
instance ToResourceProperties VPCEndpointService where
  toResourceProperties VPCEndpointService {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCEndpointService",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceptanceRequired" Prelude.<$> acceptanceRequired,
                            (JSON..=) "ContributorInsightsEnabled"
                              Prelude.<$> contributorInsightsEnabled,
                            (JSON..=) "GatewayLoadBalancerArns"
                              Prelude.<$> gatewayLoadBalancerArns,
                            (JSON..=) "NetworkLoadBalancerArns"
                              Prelude.<$> networkLoadBalancerArns,
                            (JSON..=) "PayerResponsibility" Prelude.<$> payerResponsibility])}
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
               (JSON..=) "PayerResponsibility" Prelude.<$> payerResponsibility]))
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