module Stratosphere.MediaLive.Channel.AvailSettingsProperty (
        module Exports, AvailSettingsProperty(..), mkAvailSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte35SpliceInsertProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte35TimeSignalAposProperty as Exports
import Stratosphere.ResourceProperties
data AvailSettingsProperty
  = AvailSettingsProperty {scte35SpliceInsert :: (Prelude.Maybe Scte35SpliceInsertProperty),
                           scte35TimeSignalApos :: (Prelude.Maybe Scte35TimeSignalAposProperty)}
mkAvailSettingsProperty :: AvailSettingsProperty
mkAvailSettingsProperty
  = AvailSettingsProperty
      {scte35SpliceInsert = Prelude.Nothing,
       scte35TimeSignalApos = Prelude.Nothing}
instance ToResourceProperties AvailSettingsProperty where
  toResourceProperties AvailSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AvailSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Scte35SpliceInsert" Prelude.<$> scte35SpliceInsert,
                            (JSON..=) "Scte35TimeSignalApos"
                              Prelude.<$> scte35TimeSignalApos])}
instance JSON.ToJSON AvailSettingsProperty where
  toJSON AvailSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Scte35SpliceInsert" Prelude.<$> scte35SpliceInsert,
               (JSON..=) "Scte35TimeSignalApos"
                 Prelude.<$> scte35TimeSignalApos]))
instance Property "Scte35SpliceInsert" AvailSettingsProperty where
  type PropertyType "Scte35SpliceInsert" AvailSettingsProperty = Scte35SpliceInsertProperty
  set newValue AvailSettingsProperty {..}
    = AvailSettingsProperty
        {scte35SpliceInsert = Prelude.pure newValue, ..}
instance Property "Scte35TimeSignalApos" AvailSettingsProperty where
  type PropertyType "Scte35TimeSignalApos" AvailSettingsProperty = Scte35TimeSignalAposProperty
  set newValue AvailSettingsProperty {..}
    = AvailSettingsProperty
        {scte35TimeSignalApos = Prelude.pure newValue, ..}