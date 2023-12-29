module Stratosphere.MediaLive.Channel.FeatureActivationsProperty (
        FeatureActivationsProperty(..), mkFeatureActivationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureActivationsProperty
  = FeatureActivationsProperty {inputPrepareScheduleActions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeatureActivationsProperty :: FeatureActivationsProperty
mkFeatureActivationsProperty
  = FeatureActivationsProperty
      {inputPrepareScheduleActions = Prelude.Nothing}
instance ToResourceProperties FeatureActivationsProperty where
  toResourceProperties FeatureActivationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FeatureActivations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputPrepareScheduleActions"
                              Prelude.<$> inputPrepareScheduleActions])}
instance JSON.ToJSON FeatureActivationsProperty where
  toJSON FeatureActivationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputPrepareScheduleActions"
                 Prelude.<$> inputPrepareScheduleActions]))
instance Property "InputPrepareScheduleActions" FeatureActivationsProperty where
  type PropertyType "InputPrepareScheduleActions" FeatureActivationsProperty = Value Prelude.Text
  set newValue FeatureActivationsProperty {}
    = FeatureActivationsProperty
        {inputPrepareScheduleActions = Prelude.pure newValue, ..}