module Stratosphere.MediaConnect.BridgeSource (
        module Exports, BridgeSource(..), mkBridgeSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.BridgeSource.BridgeFlowSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaConnect.BridgeSource.BridgeNetworkSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeSource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgesource.html>
    BridgeSource {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgesource.html#cfn-mediaconnect-bridgesource-bridgearn>
                  bridgeArn :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgesource.html#cfn-mediaconnect-bridgesource-flowsource>
                  flowSource :: (Prelude.Maybe BridgeFlowSourceProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgesource.html#cfn-mediaconnect-bridgesource-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgesource.html#cfn-mediaconnect-bridgesource-networksource>
                  networkSource :: (Prelude.Maybe BridgeNetworkSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeSource ::
  Value Prelude.Text -> Value Prelude.Text -> BridgeSource
mkBridgeSource bridgeArn name
  = BridgeSource
      {haddock_workaround_ = (), bridgeArn = bridgeArn, name = name,
       flowSource = Prelude.Nothing, networkSource = Prelude.Nothing}
instance ToResourceProperties BridgeSource where
  toResourceProperties BridgeSource {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BridgeArn" JSON..= bridgeArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "FlowSource" Prelude.<$> flowSource,
                               (JSON..=) "NetworkSource" Prelude.<$> networkSource]))}
instance JSON.ToJSON BridgeSource where
  toJSON BridgeSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BridgeArn" JSON..= bridgeArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "FlowSource" Prelude.<$> flowSource,
                  (JSON..=) "NetworkSource" Prelude.<$> networkSource])))
instance Property "BridgeArn" BridgeSource where
  type PropertyType "BridgeArn" BridgeSource = Value Prelude.Text
  set newValue BridgeSource {..}
    = BridgeSource {bridgeArn = newValue, ..}
instance Property "FlowSource" BridgeSource where
  type PropertyType "FlowSource" BridgeSource = BridgeFlowSourceProperty
  set newValue BridgeSource {..}
    = BridgeSource {flowSource = Prelude.pure newValue, ..}
instance Property "Name" BridgeSource where
  type PropertyType "Name" BridgeSource = Value Prelude.Text
  set newValue BridgeSource {..} = BridgeSource {name = newValue, ..}
instance Property "NetworkSource" BridgeSource where
  type PropertyType "NetworkSource" BridgeSource = BridgeNetworkSourceProperty
  set newValue BridgeSource {..}
    = BridgeSource {networkSource = Prelude.pure newValue, ..}