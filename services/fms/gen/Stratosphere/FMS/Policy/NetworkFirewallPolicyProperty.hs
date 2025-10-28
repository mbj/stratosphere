module Stratosphere.FMS.Policy.NetworkFirewallPolicyProperty (
        NetworkFirewallPolicyProperty(..), mkNetworkFirewallPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkFirewallPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkfirewallpolicy.html>
    NetworkFirewallPolicyProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkfirewallpolicy.html#cfn-fms-policy-networkfirewallpolicy-firewalldeploymentmodel>
                                   firewallDeploymentModel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkFirewallPolicyProperty ::
  Value Prelude.Text -> NetworkFirewallPolicyProperty
mkNetworkFirewallPolicyProperty firewallDeploymentModel
  = NetworkFirewallPolicyProperty
      {haddock_workaround_ = (),
       firewallDeploymentModel = firewallDeploymentModel}
instance ToResourceProperties NetworkFirewallPolicyProperty where
  toResourceProperties NetworkFirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.NetworkFirewallPolicy",
         supportsTags = Prelude.False,
         properties = ["FirewallDeploymentModel"
                         JSON..= firewallDeploymentModel]}
instance JSON.ToJSON NetworkFirewallPolicyProperty where
  toJSON NetworkFirewallPolicyProperty {..}
    = JSON.object
        ["FirewallDeploymentModel" JSON..= firewallDeploymentModel]
instance Property "FirewallDeploymentModel" NetworkFirewallPolicyProperty where
  type PropertyType "FirewallDeploymentModel" NetworkFirewallPolicyProperty = Value Prelude.Text
  set newValue NetworkFirewallPolicyProperty {..}
    = NetworkFirewallPolicyProperty
        {firewallDeploymentModel = newValue, ..}