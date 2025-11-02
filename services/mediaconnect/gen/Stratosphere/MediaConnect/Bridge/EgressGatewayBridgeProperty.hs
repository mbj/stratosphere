module Stratosphere.MediaConnect.Bridge.EgressGatewayBridgeProperty (
        EgressGatewayBridgeProperty(..), mkEgressGatewayBridgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressGatewayBridgeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-egressgatewaybridge.html>
    EgressGatewayBridgeProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-egressgatewaybridge.html#cfn-mediaconnect-bridge-egressgatewaybridge-maxbitrate>
                                 maxBitrate :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressGatewayBridgeProperty ::
  Value Prelude.Integer -> EgressGatewayBridgeProperty
mkEgressGatewayBridgeProperty maxBitrate
  = EgressGatewayBridgeProperty
      {haddock_workaround_ = (), maxBitrate = maxBitrate}
instance ToResourceProperties EgressGatewayBridgeProperty where
  toResourceProperties EgressGatewayBridgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.EgressGatewayBridge",
         supportsTags = Prelude.False,
         properties = ["MaxBitrate" JSON..= maxBitrate]}
instance JSON.ToJSON EgressGatewayBridgeProperty where
  toJSON EgressGatewayBridgeProperty {..}
    = JSON.object ["MaxBitrate" JSON..= maxBitrate]
instance Property "MaxBitrate" EgressGatewayBridgeProperty where
  type PropertyType "MaxBitrate" EgressGatewayBridgeProperty = Value Prelude.Integer
  set newValue EgressGatewayBridgeProperty {..}
    = EgressGatewayBridgeProperty {maxBitrate = newValue, ..}