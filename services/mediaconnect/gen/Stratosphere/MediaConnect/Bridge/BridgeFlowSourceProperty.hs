module Stratosphere.MediaConnect.Bridge.BridgeFlowSourceProperty (
        module Exports, BridgeFlowSourceProperty(..),
        mkBridgeFlowSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.VpcInterfaceAttachmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeFlowSourceProperty
  = BridgeFlowSourceProperty {flowArn :: (Value Prelude.Text),
                              flowVpcInterfaceAttachment :: (Prelude.Maybe VpcInterfaceAttachmentProperty),
                              name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeFlowSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BridgeFlowSourceProperty
mkBridgeFlowSourceProperty flowArn name
  = BridgeFlowSourceProperty
      {flowArn = flowArn, name = name,
       flowVpcInterfaceAttachment = Prelude.Nothing}
instance ToResourceProperties BridgeFlowSourceProperty where
  toResourceProperties BridgeFlowSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.BridgeFlowSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowArn" JSON..= flowArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "FlowVpcInterfaceAttachment"
                                 Prelude.<$> flowVpcInterfaceAttachment]))}
instance JSON.ToJSON BridgeFlowSourceProperty where
  toJSON BridgeFlowSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowArn" JSON..= flowArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "FlowVpcInterfaceAttachment"
                    Prelude.<$> flowVpcInterfaceAttachment])))
instance Property "FlowArn" BridgeFlowSourceProperty where
  type PropertyType "FlowArn" BridgeFlowSourceProperty = Value Prelude.Text
  set newValue BridgeFlowSourceProperty {..}
    = BridgeFlowSourceProperty {flowArn = newValue, ..}
instance Property "FlowVpcInterfaceAttachment" BridgeFlowSourceProperty where
  type PropertyType "FlowVpcInterfaceAttachment" BridgeFlowSourceProperty = VpcInterfaceAttachmentProperty
  set newValue BridgeFlowSourceProperty {..}
    = BridgeFlowSourceProperty
        {flowVpcInterfaceAttachment = Prelude.pure newValue, ..}
instance Property "Name" BridgeFlowSourceProperty where
  type PropertyType "Name" BridgeFlowSourceProperty = Value Prelude.Text
  set newValue BridgeFlowSourceProperty {..}
    = BridgeFlowSourceProperty {name = newValue, ..}