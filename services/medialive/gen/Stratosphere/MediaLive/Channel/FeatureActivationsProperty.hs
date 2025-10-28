module Stratosphere.MediaLive.Channel.FeatureActivationsProperty (
        FeatureActivationsProperty(..), mkFeatureActivationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureActivationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-featureactivations.html>
    FeatureActivationsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-featureactivations.html#cfn-medialive-channel-featureactivations-inputpreparescheduleactions>
                                inputPrepareScheduleActions :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-featureactivations.html#cfn-medialive-channel-featureactivations-outputstaticimageoverlayscheduleactions>
                                outputStaticImageOverlayScheduleActions :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeatureActivationsProperty :: FeatureActivationsProperty
mkFeatureActivationsProperty
  = FeatureActivationsProperty
      {haddock_workaround_ = (),
       inputPrepareScheduleActions = Prelude.Nothing,
       outputStaticImageOverlayScheduleActions = Prelude.Nothing}
instance ToResourceProperties FeatureActivationsProperty where
  toResourceProperties FeatureActivationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FeatureActivations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputPrepareScheduleActions"
                              Prelude.<$> inputPrepareScheduleActions,
                            (JSON..=) "OutputStaticImageOverlayScheduleActions"
                              Prelude.<$> outputStaticImageOverlayScheduleActions])}
instance JSON.ToJSON FeatureActivationsProperty where
  toJSON FeatureActivationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputPrepareScheduleActions"
                 Prelude.<$> inputPrepareScheduleActions,
               (JSON..=) "OutputStaticImageOverlayScheduleActions"
                 Prelude.<$> outputStaticImageOverlayScheduleActions]))
instance Property "InputPrepareScheduleActions" FeatureActivationsProperty where
  type PropertyType "InputPrepareScheduleActions" FeatureActivationsProperty = Value Prelude.Text
  set newValue FeatureActivationsProperty {..}
    = FeatureActivationsProperty
        {inputPrepareScheduleActions = Prelude.pure newValue, ..}
instance Property "OutputStaticImageOverlayScheduleActions" FeatureActivationsProperty where
  type PropertyType "OutputStaticImageOverlayScheduleActions" FeatureActivationsProperty = Value Prelude.Text
  set newValue FeatureActivationsProperty {..}
    = FeatureActivationsProperty
        {outputStaticImageOverlayScheduleActions = Prelude.pure newValue,
         ..}