module Stratosphere.MSK.ClusterPolicy (
        ClusterPolicy(..), mkClusterPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-clusterpolicy.html>
    ClusterPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-clusterpolicy.html#cfn-msk-clusterpolicy-clusterarn>
                   clusterArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-clusterpolicy.html#cfn-msk-clusterpolicy-policy>
                   policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterPolicy ::
  Value Prelude.Text -> JSON.Object -> ClusterPolicy
mkClusterPolicy clusterArn policy
  = ClusterPolicy
      {haddock_workaround_ = (), clusterArn = clusterArn,
       policy = policy}
instance ToResourceProperties ClusterPolicy where
  toResourceProperties ClusterPolicy {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ClusterPolicy", supportsTags = Prelude.False,
         properties = ["ClusterArn" JSON..= clusterArn,
                       "Policy" JSON..= policy]}
instance JSON.ToJSON ClusterPolicy where
  toJSON ClusterPolicy {..}
    = JSON.object
        ["ClusterArn" JSON..= clusterArn, "Policy" JSON..= policy]
instance Property "ClusterArn" ClusterPolicy where
  type PropertyType "ClusterArn" ClusterPolicy = Value Prelude.Text
  set newValue ClusterPolicy {..}
    = ClusterPolicy {clusterArn = newValue, ..}
instance Property "Policy" ClusterPolicy where
  type PropertyType "Policy" ClusterPolicy = JSON.Object
  set newValue ClusterPolicy {..}
    = ClusterPolicy {policy = newValue, ..}