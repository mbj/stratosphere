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
  = BandwidthReductionFilterSettingsProperty {postFilterSharpening :: (Prelude.Maybe (Value Prelude.Text)),
                                              strength :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBandwidthReductionFilterSettingsProperty ::
  BandwidthReductionFilterSettingsProperty
mkBandwidthReductionFilterSettingsProperty
  = BandwidthReductionFilterSettingsProperty
      {postFilterSharpening = Prelude.Nothing,
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