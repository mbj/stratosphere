module Stratosphere.MediaTailor.PlaybackConfiguration.AvailSuppressionProperty (
        AvailSuppressionProperty(..), mkAvailSuppressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailSuppressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-availsuppression.html>
    AvailSuppressionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-availsuppression.html#cfn-mediatailor-playbackconfiguration-availsuppression-fillpolicy>
                              fillPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-availsuppression.html#cfn-mediatailor-playbackconfiguration-availsuppression-mode>
                              mode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-availsuppression.html#cfn-mediatailor-playbackconfiguration-availsuppression-value>
                              value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailSuppressionProperty :: AvailSuppressionProperty
mkAvailSuppressionProperty
  = AvailSuppressionProperty
      {haddock_workaround_ = (), fillPolicy = Prelude.Nothing,
       mode = Prelude.Nothing, value = Prelude.Nothing}
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