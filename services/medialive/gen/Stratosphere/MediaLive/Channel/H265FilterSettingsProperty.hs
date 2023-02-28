module Stratosphere.MediaLive.Channel.H265FilterSettingsProperty (
        module Exports, H265FilterSettingsProperty(..),
        mkH265FilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TemporalFilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
data H265FilterSettingsProperty
  = H265FilterSettingsProperty {temporalFilterSettings :: (Prelude.Maybe TemporalFilterSettingsProperty)}
mkH265FilterSettingsProperty :: H265FilterSettingsProperty
mkH265FilterSettingsProperty
  = H265FilterSettingsProperty
      {temporalFilterSettings = Prelude.Nothing}
instance ToResourceProperties H265FilterSettingsProperty where
  toResourceProperties H265FilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H265FilterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TemporalFilterSettings"
                              Prelude.<$> temporalFilterSettings])}
instance JSON.ToJSON H265FilterSettingsProperty where
  toJSON H265FilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TemporalFilterSettings"
                 Prelude.<$> temporalFilterSettings]))
instance Property "TemporalFilterSettings" H265FilterSettingsProperty where
  type PropertyType "TemporalFilterSettings" H265FilterSettingsProperty = TemporalFilterSettingsProperty
  set newValue H265FilterSettingsProperty {}
    = H265FilterSettingsProperty
        {temporalFilterSettings = Prelude.pure newValue, ..}