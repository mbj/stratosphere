module Stratosphere.MediaLive.Channel.H265FilterSettingsProperty (
        module Exports, H265FilterSettingsProperty(..),
        mkH265FilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.BandwidthReductionFilterSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TemporalFilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
data H265FilterSettingsProperty
  = H265FilterSettingsProperty {bandwidthReductionFilterSettings :: (Prelude.Maybe BandwidthReductionFilterSettingsProperty),
                                temporalFilterSettings :: (Prelude.Maybe TemporalFilterSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH265FilterSettingsProperty :: H265FilterSettingsProperty
mkH265FilterSettingsProperty
  = H265FilterSettingsProperty
      {bandwidthReductionFilterSettings = Prelude.Nothing,
       temporalFilterSettings = Prelude.Nothing}
instance ToResourceProperties H265FilterSettingsProperty where
  toResourceProperties H265FilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H265FilterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BandwidthReductionFilterSettings"
                              Prelude.<$> bandwidthReductionFilterSettings,
                            (JSON..=) "TemporalFilterSettings"
                              Prelude.<$> temporalFilterSettings])}
instance JSON.ToJSON H265FilterSettingsProperty where
  toJSON H265FilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BandwidthReductionFilterSettings"
                 Prelude.<$> bandwidthReductionFilterSettings,
               (JSON..=) "TemporalFilterSettings"
                 Prelude.<$> temporalFilterSettings]))
instance Property "BandwidthReductionFilterSettings" H265FilterSettingsProperty where
  type PropertyType "BandwidthReductionFilterSettings" H265FilterSettingsProperty = BandwidthReductionFilterSettingsProperty
  set newValue H265FilterSettingsProperty {..}
    = H265FilterSettingsProperty
        {bandwidthReductionFilterSettings = Prelude.pure newValue, ..}
instance Property "TemporalFilterSettings" H265FilterSettingsProperty where
  type PropertyType "TemporalFilterSettings" H265FilterSettingsProperty = TemporalFilterSettingsProperty
  set newValue H265FilterSettingsProperty {..}
    = H265FilterSettingsProperty
        {temporalFilterSettings = Prelude.pure newValue, ..}