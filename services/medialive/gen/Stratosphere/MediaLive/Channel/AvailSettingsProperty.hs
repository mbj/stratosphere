module Stratosphere.MediaLive.Channel.AvailSettingsProperty (
        module Exports, AvailSettingsProperty(..), mkAvailSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EsamProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte35SpliceInsertProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte35TimeSignalAposProperty as Exports
import Stratosphere.ResourceProperties
data AvailSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html>
    AvailSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-esam>
                           esam :: (Prelude.Maybe EsamProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35spliceinsert>
                           scte35SpliceInsert :: (Prelude.Maybe Scte35SpliceInsertProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-availsettings.html#cfn-medialive-channel-availsettings-scte35timesignalapos>
                           scte35TimeSignalApos :: (Prelude.Maybe Scte35TimeSignalAposProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailSettingsProperty :: AvailSettingsProperty
mkAvailSettingsProperty
  = AvailSettingsProperty
      {haddock_workaround_ = (), esam = Prelude.Nothing,
       scte35SpliceInsert = Prelude.Nothing,
       scte35TimeSignalApos = Prelude.Nothing}
instance ToResourceProperties AvailSettingsProperty where
  toResourceProperties AvailSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AvailSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Esam" Prelude.<$> esam,
                            (JSON..=) "Scte35SpliceInsert" Prelude.<$> scte35SpliceInsert,
                            (JSON..=) "Scte35TimeSignalApos"
                              Prelude.<$> scte35TimeSignalApos])}
instance JSON.ToJSON AvailSettingsProperty where
  toJSON AvailSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Esam" Prelude.<$> esam,
               (JSON..=) "Scte35SpliceInsert" Prelude.<$> scte35SpliceInsert,
               (JSON..=) "Scte35TimeSignalApos"
                 Prelude.<$> scte35TimeSignalApos]))
instance Property "Esam" AvailSettingsProperty where
  type PropertyType "Esam" AvailSettingsProperty = EsamProperty
  set newValue AvailSettingsProperty {..}
    = AvailSettingsProperty {esam = Prelude.pure newValue, ..}
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