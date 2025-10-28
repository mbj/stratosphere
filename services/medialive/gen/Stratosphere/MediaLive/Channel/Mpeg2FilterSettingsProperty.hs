module Stratosphere.MediaLive.Channel.Mpeg2FilterSettingsProperty (
        module Exports, Mpeg2FilterSettingsProperty(..),
        mkMpeg2FilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TemporalFilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
data Mpeg2FilterSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mpeg2filtersettings.html>
    Mpeg2FilterSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mpeg2filtersettings.html#cfn-medialive-channel-mpeg2filtersettings-temporalfiltersettings>
                                 temporalFilterSettings :: (Prelude.Maybe TemporalFilterSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMpeg2FilterSettingsProperty :: Mpeg2FilterSettingsProperty
mkMpeg2FilterSettingsProperty
  = Mpeg2FilterSettingsProperty
      {haddock_workaround_ = (),
       temporalFilterSettings = Prelude.Nothing}
instance ToResourceProperties Mpeg2FilterSettingsProperty where
  toResourceProperties Mpeg2FilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Mpeg2FilterSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TemporalFilterSettings"
                              Prelude.<$> temporalFilterSettings])}
instance JSON.ToJSON Mpeg2FilterSettingsProperty where
  toJSON Mpeg2FilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TemporalFilterSettings"
                 Prelude.<$> temporalFilterSettings]))
instance Property "TemporalFilterSettings" Mpeg2FilterSettingsProperty where
  type PropertyType "TemporalFilterSettings" Mpeg2FilterSettingsProperty = TemporalFilterSettingsProperty
  set newValue Mpeg2FilterSettingsProperty {..}
    = Mpeg2FilterSettingsProperty
        {temporalFilterSettings = Prelude.pure newValue, ..}