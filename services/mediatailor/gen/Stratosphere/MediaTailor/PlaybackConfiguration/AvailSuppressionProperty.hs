module Stratosphere.MediaTailor.PlaybackConfiguration.AvailSuppressionProperty (
        AvailSuppressionProperty(..), mkAvailSuppressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailSuppressionProperty
  = AvailSuppressionProperty {fillPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                              mode :: (Prelude.Maybe (Value Prelude.Text)),
                              value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailSuppressionProperty :: AvailSuppressionProperty
mkAvailSuppressionProperty
  = AvailSuppressionProperty
      {fillPolicy = Prelude.Nothing, mode = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties AvailSuppressionProperty where
  toResourceProperties AvailSuppressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.AvailSuppression",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FillPolicy" Prelude.<$> fillPolicy,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON AvailSuppressionProperty where
  toJSON AvailSuppressionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FillPolicy" Prelude.<$> fillPolicy,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "FillPolicy" AvailSuppressionProperty where
  type PropertyType "FillPolicy" AvailSuppressionProperty = Value Prelude.Text
  set newValue AvailSuppressionProperty {..}
    = AvailSuppressionProperty {fillPolicy = Prelude.pure newValue, ..}
instance Property "Mode" AvailSuppressionProperty where
  type PropertyType "Mode" AvailSuppressionProperty = Value Prelude.Text
  set newValue AvailSuppressionProperty {..}
    = AvailSuppressionProperty {mode = Prelude.pure newValue, ..}
instance Property "Value" AvailSuppressionProperty where
  type PropertyType "Value" AvailSuppressionProperty = Value Prelude.Text
  set newValue AvailSuppressionProperty {..}
    = AvailSuppressionProperty {value = Prelude.pure newValue, ..}