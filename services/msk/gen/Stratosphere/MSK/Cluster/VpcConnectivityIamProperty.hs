module Stratosphere.MSK.Cluster.VpcConnectivityIamProperty (
        VpcConnectivityIamProperty(..), mkVpcConnectivityIamProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnectivityIamProperty
  = VpcConnectivityIamProperty {enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityIamProperty ::
  Value Prelude.Bool -> VpcConnectivityIamProperty
mkVpcConnectivityIamProperty enabled
  = VpcConnectivityIamProperty {enabled = enabled}
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
  set newValue VpcConnectivityIamProperty {}
    = VpcConnectivityIamProperty {enabled = newValue, ..}