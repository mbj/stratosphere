module Stratosphere.S3Outposts.Endpoint.NetworkInterfaceProperty (
        NetworkInterfaceProperty(..), mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = NetworkInterfaceProperty {networkInterfaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceProperty ::
  Value Prelude.Text -> NetworkInterfaceProperty
mkNetworkInterfaceProperty networkInterfaceId
  = NetworkInterfaceProperty
      {networkInterfaceId = networkInterfaceId}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Endpoint.NetworkInterface",
         supportsTags = Prelude.False,
         properties = ["NetworkInterfaceId" JSON..= networkInterfaceId]}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object ["NetworkInterfaceId" JSON..= networkInterfaceId]
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {}
    = NetworkInterfaceProperty {networkInterfaceId = newValue, ..}