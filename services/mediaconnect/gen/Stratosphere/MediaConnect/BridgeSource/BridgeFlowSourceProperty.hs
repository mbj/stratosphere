module Stratosphere.MediaConnect.BridgeSource.BridgeFlowSourceProperty (
        module Exports, BridgeFlowSourceProperty(..),
        mkBridgeFlowSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.BridgeSource.VpcInterfaceAttachmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeFlowSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgesource-bridgeflowsource.html>
    BridgeFlowSourceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgesource-bridgeflowsource.html#cfn-mediaconnect-bridgesource-bridgeflowsource-flowarn>
                              flowArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridgesource-bridgeflowsource.html#cfn-mediaconnect-bridgesource-bridgeflowsource-flowvpcinterfaceattachment>
                              flowVpcInterfaceAttachment :: (Prelude.Maybe VpcInterfaceAttachmentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeFlowSourceProperty ::
  Value Prelude.Text -> BridgeFlowSourceProperty
mkBridgeFlowSourceProperty flowArn
  = BridgeFlowSourceProperty
      {haddock_workaround_ = (), flowArn = flowArn,
       flowVpcInterfaceAttachment = Prelude.Nothing}
instance ToResourceProperties BridgeFlowSourceProperty where
  toResourceProperties BridgeFlowSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeSource.BridgeFlowSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowArn" JSON..= flowArn]
                           (Prelude.catMaybes
                              [(JSON..=) "FlowVpcInterfaceAttachment"
                                 Prelude.<$> flowVpcInterfaceAttachment]))}
instance JSON.ToJSON BridgeFlowSourceProperty where
  toJSON BridgeFlowSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowArn" JSON..= flowArn]
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