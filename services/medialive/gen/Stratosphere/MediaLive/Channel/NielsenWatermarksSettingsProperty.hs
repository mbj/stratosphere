module Stratosphere.MediaLive.Channel.NielsenWatermarksSettingsProperty (
        module Exports, NielsenWatermarksSettingsProperty(..),
        mkNielsenWatermarksSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.NielsenCBETProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.NielsenNaesIiNwProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenWatermarksSettingsProperty
  = NielsenWatermarksSettingsProperty {nielsenCbetSettings :: (Prelude.Maybe NielsenCBETProperty),
                                       nielsenDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                                       nielsenNaesIiNwSettings :: (Prelude.Maybe NielsenNaesIiNwProperty)}
mkNielsenWatermarksSettingsProperty ::
  NielsenWatermarksSettingsProperty
mkNielsenWatermarksSettingsProperty
  = NielsenWatermarksSettingsProperty
      {nielsenCbetSettings = Prelude.Nothing,
       nielsenDistributionType = Prelude.Nothing,
       nielsenNaesIiNwSettings = Prelude.Nothing}
instance ToResourceProperties NielsenWatermarksSettingsProperty where
  toResourceProperties NielsenWatermarksSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenWatermarksSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NielsenCbetSettings" Prelude.<$> nielsenCbetSettings,
                            (JSON..=) "NielsenDistributionType"
                              Prelude.<$> nielsenDistributionType,
                            (JSON..=) "NielsenNaesIiNwSettings"
                              Prelude.<$> nielsenNaesIiNwSettings])}
instance JSON.ToJSON NielsenWatermarksSettingsProperty where
  toJSON NielsenWatermarksSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NielsenCbetSettings" Prelude.<$> nielsenCbetSettings,
               (JSON..=) "NielsenDistributionType"
                 Prelude.<$> nielsenDistributionType,
               (JSON..=) "NielsenNaesIiNwSettings"
                 Prelude.<$> nielsenNaesIiNwSettings]))
instance Property "NielsenCbetSettings" NielsenWatermarksSettingsProperty where
  type PropertyType "NielsenCbetSettings" NielsenWatermarksSettingsProperty = NielsenCBETProperty
  set newValue NielsenWatermarksSettingsProperty {..}
    = NielsenWatermarksSettingsProperty
        {nielsenCbetSettings = Prelude.pure newValue, ..}
instance Property "NielsenDistributionType" NielsenWatermarksSettingsProperty where
  type PropertyType "NielsenDistributionType" NielsenWatermarksSettingsProperty = Value Prelude.Text
  set newValue NielsenWatermarksSettingsProperty {..}
    = NielsenWatermarksSettingsProperty
        {nielsenDistributionType = Prelude.pure newValue, ..}
instance Property "NielsenNaesIiNwSettings" NielsenWatermarksSettingsProperty where
  type PropertyType "NielsenNaesIiNwSettings" NielsenWatermarksSettingsProperty = NielsenNaesIiNwProperty
  set newValue NielsenWatermarksSettingsProperty {..}
    = NielsenWatermarksSettingsProperty
        {nielsenNaesIiNwSettings = Prelude.pure newValue, ..}