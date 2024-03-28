module Stratosphere.MediaConnect.Bridge.IngressGatewayBridgeProperty (
        IngressGatewayBridgeProperty(..), mkIngressGatewayBridgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressGatewayBridgeProperty
  = IngressGatewayBridgeProperty {maxBitrate :: (Value Prelude.Integer),
                                  maxOutputs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressGatewayBridgeProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> IngressGatewayBridgeProperty
mkIngressGatewayBridgeProperty maxBitrate maxOutputs
  = IngressGatewayBridgeProperty
      {maxBitrate = maxBitrate, maxOutputs = maxOutputs}
instance ToResourceProperties IngressGatewayBridgeProperty where
  toResourceProperties IngressGatewayBridgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.IngressGatewayBridge",
         supportsTags = Prelude.False,
         properties = ["MaxBitrate" JSON..= maxBitrate,
                       "MaxOutputs" JSON..= maxOutputs]}
instance JSON.ToJSON IngressGatewayBridgeProperty where
  toJSON IngressGatewayBridgeProperty {..}
    = JSON.object
        ["MaxBitrate" JSON..= maxBitrate, "MaxOutputs" JSON..= maxOutputs]
instance Property "MaxBitrate" IngressGatewayBridgeProperty where
  type PropertyType "MaxBitrate" IngressGatewayBridgeProperty = Value Prelude.Integer
  set newValue IngressGatewayBridgeProperty {..}
    = IngressGatewayBridgeProperty {maxBitrate = newValue, ..}
instance Property "MaxOutputs" IngressGatewayBridgeProperty where
  type PropertyType "MaxOutputs" IngressGatewayBridgeProperty = Value Prelude.Integer
  set newValue IngressGatewayBridgeProperty {..}
    = IngressGatewayBridgeProperty {maxOutputs = newValue, ..}