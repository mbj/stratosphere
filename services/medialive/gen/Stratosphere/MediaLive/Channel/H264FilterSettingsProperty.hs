module Stratosphere.MediaLive.Channel.H264FilterSettingsProperty (
        module Exports, H264FilterSettingsProperty(..),
        mkH264FilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.BandwidthReductionFilterSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TemporalFilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
data H264FilterSettingsProperty
  = H264FilterSettingsProperty {bandwidthReductionFilterSettings :: (Prelude.Maybe BandwidthReductionFilterSettingsProperty),
                                temporalFilterSettings :: (Prelude.Maybe TemporalFilterSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH264FilterSettingsProperty :: H264FilterSettingsProperty
mkH264FilterSettingsProperty
  = H264FilterSettingsProperty
      {bandwidthReductionFilterSettings = Prelude.Nothing,
       temporalFilterSettings = Prelude.Nothing}
instance ToResourceProperties H264FilterSettingsProperty where
  toResourceProperties H264FilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H264FilterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BandwidthReductionFilterSettings"
                              Prelude.<$> bandwidthReductionFilterSettings,
                            (JSON..=) "TemporalFilterSettings"
                              Prelude.<$> temporalFilterSettings])}
instance JSON.ToJSON H264FilterSettingsProperty where
  toJSON H264FilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BandwidthReductionFilterSettings"
                 Prelude.<$> bandwidthReductionFilterSettings,
               (JSON..=) "TemporalFilterSettings"
                 Prelude.<$> temporalFilterSettings]))
instance Property "BandwidthReductionFilterSettings" H264FilterSettingsProperty where
  type PropertyType "BandwidthReductionFilterSettings" H264FilterSettingsProperty = BandwidthReductionFilterSettingsProperty
  set newValue H264FilterSettingsProperty {..}
    = H264FilterSettingsProperty
        {bandwidthReductionFilterSettings = Prelude.pure newValue, ..}
instance Property "TemporalFilterSettings" H264FilterSettingsProperty where
  type PropertyType "TemporalFilterSettings" H264FilterSettingsProperty = TemporalFilterSettingsProperty
  set newValue H264FilterSettingsProperty {..}
    = H264FilterSettingsProperty
        {temporalFilterSettings = Prelude.pure newValue, ..}