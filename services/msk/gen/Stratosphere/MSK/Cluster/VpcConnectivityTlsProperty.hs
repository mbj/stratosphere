module Stratosphere.MSK.Cluster.VpcConnectivityTlsProperty (
        VpcConnectivityTlsProperty(..), mkVpcConnectivityTlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnectivityTlsProperty
  = VpcConnectivityTlsProperty {enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivityTlsProperty ::
  Value Prelude.Bool -> VpcConnectivityTlsProperty
mkVpcConnectivityTlsProperty enabled
  = VpcConnectivityTlsProperty {enabled = enabled}
instance ToResourceProperties VpcConnectivityTlsProperty where
  toResourceProperties VpcConnectivityTlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivityTls",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON VpcConnectivityTlsProperty where
  toJSON VpcConnectivityTlsProperty {..}
    = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" VpcConnectivityTlsProperty where
  type PropertyType "Enabled" VpcConnectivityTlsProperty = Value Prelude.Bool
  set newValue VpcConnectivityTlsProperty {}
    = VpcConnectivityTlsProperty {enabled = newValue, ..}