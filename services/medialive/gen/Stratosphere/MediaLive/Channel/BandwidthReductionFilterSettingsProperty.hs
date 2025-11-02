module Stratosphere.MediaLive.Channel.BandwidthReductionFilterSettingsProperty (
        BandwidthReductionFilterSettingsProperty(..),
        mkBandwidthReductionFilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BandwidthReductionFilterSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-bandwidthreductionfiltersettings.html>
    BandwidthReductionFilterSettingsProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-bandwidthreductionfiltersettings.html#cfn-medialive-channel-bandwidthreductionfiltersettings-postfiltersharpening>
                                              postFilterSharpening :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-bandwidthreductionfiltersettings.html#cfn-medialive-channel-bandwidthreductionfiltersettings-strength>
                                              strength :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBandwidthReductionFilterSettingsProperty ::
  BandwidthReductionFilterSettingsProperty
mkBandwidthReductionFilterSettingsProperty
  = BandwidthReductionFilterSettingsProperty
      {haddock_workaround_ = (), postFilterSharpening = Prelude.Nothing,
       strength = Prelude.Nothing}
instance ToResourceProperties BandwidthReductionFilterSettingsProperty where
  toResourceProperties BandwidthReductionFilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.BandwidthReductionFilterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PostFilterSharpening" Prelude.<$> postFilterSharpening,
                            (JSON..=) "Strength" Prelude.<$> strength])}
instance JSON.ToJSON BandwidthReductionFilterSettingsProperty where
  toJSON BandwidthReductionFilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PostFilterSharpening" Prelude.<$> postFilterSharpening,
               (JSON..=) "Strength" Prelude.<$> strength]))
instance Property "PostFilterSharpening" BandwidthReductionFilterSettingsProperty where
  type PropertyType "PostFilterSharpening" BandwidthReductionFilterSettingsProperty = Value Prelude.Text
  set newValue BandwidthReductionFilterSettingsProperty {..}
    = BandwidthReductionFilterSettingsProperty
        {postFilterSharpening = Prelude.pure newValue, ..}
instance Property "Strength" BandwidthReductionFilterSettingsProperty where
  type PropertyType "Strength" BandwidthReductionFilterSettingsProperty = Value Prelude.Text
  set newValue BandwidthReductionFilterSettingsProperty {..}
    = BandwidthReductionFilterSettingsProperty
        {strength = Prelude.pure newValue, ..}