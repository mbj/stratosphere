module Stratosphere.EC2.VPCEndpointService (
        VPCEndpointService(..), mkVPCEndpointService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCEndpointService
  = VPCEndpointService {acceptanceRequired :: (Prelude.Maybe (Value Prelude.Bool)),
                        contributorInsightsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        gatewayLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        networkLoadBalancerArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                        payerResponsibility :: (Prelude.Maybe (Value Prelude.Text))}
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