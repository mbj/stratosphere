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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgeoutput.html>
    BridgeOutput {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgeoutput.html#cfn-mediaconnect-bridgeoutput-bridgearn>
                  bridgeArn :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgeoutput.html#cfn-mediaconnect-bridgeoutput-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconnect-bridgeoutput.html#cfn-mediaconnect-bridgeoutput-networkoutput>
                  networkOutput :: BridgeNetworkOutputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBridgeOutput ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> BridgeNetworkOutputProperty -> BridgeOutput
mkBridgeOutput bridgeArn name networkOutput
  = BridgeOutput
      {haddock_workaround_ = (), bridgeArn = bridgeArn, name = name,
       networkOutput = networkOutput}
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