module Stratosphere.MSK.Cluster.VpcConnectivityIamProperty (
        VpcConnectivityIamProperty(..), mkVpcConnectivityIamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnectivityIamProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityiam.html>
    VpcConnectivityIamProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityiam.html#cfn-msk-cluster-vpcconnectivityiam-enabled>
                                enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityIamProperty ::
  Value Prelude.Bool -> VpcConnectivityIamProperty
mkVpcConnectivityIamProperty enabled
  = VpcConnectivityIamProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties VpcConnectivityIamProperty where
  toResourceProperties VpcConnectivityIamProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivityIam",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON VpcConnectivityIamProperty where
  toJSON VpcConnectivityIamProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" VpcConnectivityIamProperty where
  type PropertyType "Enabled" VpcConnectivityIamProperty = Value Prelude.Bool
  set newValue VpcConnectivityIamProperty {..}
    = VpcConnectivityIamProperty {enabled = newValue, ..}