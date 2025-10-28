module Stratosphere.MSK.Cluster.VpcConnectivityScramProperty (
        VpcConnectivityScramProperty(..), mkVpcConnectivityScramProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnectivityScramProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityscram.html>
    VpcConnectivityScramProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivityscram.html#cfn-msk-cluster-vpcconnectivityscram-enabled>
                                  enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityScramProperty ::
  Value Prelude.Bool -> VpcConnectivityScramProperty
mkVpcConnectivityScramProperty enabled
  = VpcConnectivityScramProperty
      {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties VpcConnectivityScramProperty where
  toResourceProperties VpcConnectivityScramProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivityScram",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON VpcConnectivityScramProperty where
  toJSON VpcConnectivityScramProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" VpcConnectivityScramProperty where
  type PropertyType "Enabled" VpcConnectivityScramProperty = Value Prelude.Bool
  set newValue VpcConnectivityScramProperty {..}
    = VpcConnectivityScramProperty {enabled = newValue, ..}