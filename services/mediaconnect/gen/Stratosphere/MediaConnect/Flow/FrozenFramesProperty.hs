module Stratosphere.MediaConnect.Flow.FrozenFramesProperty (
        FrozenFramesProperty(..), mkFrozenFramesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrozenFramesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-frozenframes.html>
    FrozenFramesProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-frozenframes.html#cfn-mediaconnect-flow-frozenframes-state>
                          state :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-frozenframes.html#cfn-mediaconnect-flow-frozenframes-thresholdseconds>
                          thresholdSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrozenFramesProperty :: FrozenFramesProperty
mkFrozenFramesProperty
  = FrozenFramesProperty
      {haddock_workaround_ = (), state = Prelude.Nothing,
       thresholdSeconds = Prelude.Nothing}
instance ToResourceProperties FrozenFramesProperty where
  toResourceProperties FrozenFramesProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.FrozenFrames",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds])}
instance JSON.ToJSON FrozenFramesProperty where
  toJSON FrozenFramesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "State" Prelude.<$> state,
               (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds]))
instance Property "State" FrozenFramesProperty where
  type PropertyType "State" FrozenFramesProperty = Value Prelude.Text
  set newValue FrozenFramesProperty {..}
    = FrozenFramesProperty {state = Prelude.pure newValue, ..}
instance Property "ThresholdSeconds" FrozenFramesProperty where
  type PropertyType "ThresholdSeconds" FrozenFramesProperty = Value Prelude.Integer
  set newValue FrozenFramesProperty {..}
    = FrozenFramesProperty
        {thresholdSeconds = Prelude.pure newValue, ..}