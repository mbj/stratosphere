module Stratosphere.MediaConnect.Flow.BlackFramesProperty (
        BlackFramesProperty(..), mkBlackFramesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlackFramesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-blackframes.html>
    BlackFramesProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-blackframes.html#cfn-mediaconnect-flow-blackframes-state>
                         state :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-blackframes.html#cfn-mediaconnect-flow-blackframes-thresholdseconds>
                         thresholdSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlackFramesProperty :: BlackFramesProperty
mkBlackFramesProperty
  = BlackFramesProperty
      {haddock_workaround_ = (), state = Prelude.Nothing,
       thresholdSeconds = Prelude.Nothing}
instance ToResourceProperties BlackFramesProperty where
  toResourceProperties BlackFramesProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.BlackFrames",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds])}
instance JSON.ToJSON BlackFramesProperty where
  toJSON BlackFramesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "State" Prelude.<$> state,
               (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds]))
instance Property "State" BlackFramesProperty where
  type PropertyType "State" BlackFramesProperty = Value Prelude.Text
  set newValue BlackFramesProperty {..}
    = BlackFramesProperty {state = Prelude.pure newValue, ..}
instance Property "ThresholdSeconds" BlackFramesProperty where
  type PropertyType "ThresholdSeconds" BlackFramesProperty = Value Prelude.Integer
  set newValue BlackFramesProperty {..}
    = BlackFramesProperty
        {thresholdSeconds = Prelude.pure newValue, ..}