module Stratosphere.MediaConnect.Flow.GatewayBridgeSourceProperty (
        module Exports, GatewayBridgeSourceProperty(..),
        mkGatewayBridgeSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.VpcInterfaceAttachmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayBridgeSourceProperty
  = GatewayBridgeSourceProperty {bridgeArn :: (Value Prelude.Text),
                                 vpcInterfaceAttachment :: (Prelude.Maybe VpcInterfaceAttachmentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayBridgeSourceProperty ::
  Value Prelude.Text -> GatewayBridgeSourceProperty
mkGatewayBridgeSourceProperty bridgeArn
  = GatewayBridgeSourceProperty
      {bridgeArn = bridgeArn, vpcInterfaceAttachment = Prelude.Nothing}
instance ToResourceProperties GatewayBridgeSourceProperty where
  toResourceProperties GatewayBridgeSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.GatewayBridgeSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BridgeArn" JSON..= bridgeArn]
                           (Prelude.catMaybes
                              [(JSON..=) "VpcInterfaceAttachment"
                                 Prelude.<$> vpcInterfaceAttachment]))}
instance JSON.ToJSON GatewayBridgeSourceProperty where
  toJSON GatewayBridgeSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BridgeArn" JSON..= bridgeArn]
              (Prelude.catMaybes
                 [(JSON..=) "VpcInterfaceAttachment"
                    Prelude.<$> vpcInterfaceAttachment])))
instance Property "BridgeArn" GatewayBridgeSourceProperty where
  type PropertyType "BridgeArn" GatewayBridgeSourceProperty = Value Prelude.Text
  set newValue GatewayBridgeSourceProperty {..}
    = GatewayBridgeSourceProperty {bridgeArn = newValue, ..}
instance Property "VpcInterfaceAttachment" GatewayBridgeSourceProperty where
  type PropertyType "VpcInterfaceAttachment" GatewayBridgeSourceProperty = VpcInterfaceAttachmentProperty
  set newValue GatewayBridgeSourceProperty {..}
    = GatewayBridgeSourceProperty
        {vpcInterfaceAttachment = Prelude.pure newValue, ..}