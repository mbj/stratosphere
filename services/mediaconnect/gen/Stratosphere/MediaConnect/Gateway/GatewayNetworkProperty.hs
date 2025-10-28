module Stratosphere.MediaConnect.Gateway.GatewayNetworkProperty (
        GatewayNetworkProperty(..), mkGatewayNetworkProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayNetworkProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-gateway-gatewaynetwork.html>
    GatewayNetworkProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-gateway-gatewaynetwork.html#cfn-mediaconnect-gateway-gatewaynetwork-cidrblock>
                            cidrBlock :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-gateway-gatewaynetwork.html#cfn-mediaconnect-gateway-gatewaynetwork-name>
                            name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayNetworkProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GatewayNetworkProperty
mkGatewayNetworkProperty cidrBlock name
  = GatewayNetworkProperty
      {haddock_workaround_ = (), cidrBlock = cidrBlock, name = name}
instance ToResourceProperties GatewayNetworkProperty where
  toResourceProperties GatewayNetworkProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Gateway.GatewayNetwork",
         supportsTags = Prelude.False,
         properties = ["CidrBlock" JSON..= cidrBlock, "Name" JSON..= name]}
instance JSON.ToJSON GatewayNetworkProperty where
  toJSON GatewayNetworkProperty {..}
    = JSON.object ["CidrBlock" JSON..= cidrBlock, "Name" JSON..= name]
instance Property "CidrBlock" GatewayNetworkProperty where
  type PropertyType "CidrBlock" GatewayNetworkProperty = Value Prelude.Text
  set newValue GatewayNetworkProperty {..}
    = GatewayNetworkProperty {cidrBlock = newValue, ..}
instance Property "Name" GatewayNetworkProperty where
  type PropertyType "Name" GatewayNetworkProperty = Value Prelude.Text
  set newValue GatewayNetworkProperty {..}
    = GatewayNetworkProperty {name = newValue, ..}