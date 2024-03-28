module Stratosphere.MediaConnect.BridgeOutput (
        module Exports, BridgeOutput(..), mkBridgeOutput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.BridgeOutput.BridgeNetworkOutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BridgeOutput
  = BridgeOutput {bridgeArn :: (Value Prelude.Text),
                  name :: (Value Prelude.Text),
                  networkOutput :: BridgeNetworkOutputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeOutput ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> BridgeNetworkOutputProperty -> BridgeOutput
mkBridgeOutput bridgeArn name networkOutput
  = BridgeOutput
      {bridgeArn = bridgeArn, name = name, networkOutput = networkOutput}
instance ToResourceProperties BridgeOutput where
  toResourceProperties BridgeOutput {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::BridgeOutput",
         supportsTags = Prelude.False,
         properties = ["BridgeArn" JSON..= bridgeArn, "Name" JSON..= name,
                       "NetworkOutput" JSON..= networkOutput]}
instance JSON.ToJSON BridgeOutput where
  toJSON BridgeOutput {..}
    = JSON.object
        ["BridgeArn" JSON..= bridgeArn, "Name" JSON..= name,
         "NetworkOutput" JSON..= networkOutput]
instance Property "BridgeArn" BridgeOutput where
  type PropertyType "BridgeArn" BridgeOutput = Value Prelude.Text
  set newValue BridgeOutput {..}
    = BridgeOutput {bridgeArn = newValue, ..}
instance Property "Name" BridgeOutput where
  type PropertyType "Name" BridgeOutput = Value Prelude.Text
  set newValue BridgeOutput {..} = BridgeOutput {name = newValue, ..}
instance Property "NetworkOutput" BridgeOutput where
  type PropertyType "NetworkOutput" BridgeOutput = BridgeNetworkOutputProperty
  set newValue BridgeOutput {..}
    = BridgeOutput {networkOutput = newValue, ..}