module Stratosphere.MediaLive.Channel.ColorCorrectionSettingsProperty (
        module Exports, ColorCorrectionSettingsProperty(..),
        mkColorCorrectionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ColorCorrectionProperty as Exports
import Stratosphere.ResourceProperties
data ColorCorrectionSettingsProperty
  = ColorCorrectionSettingsProperty {globalColorCorrections :: (Prelude.Maybe [ColorCorrectionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorCorrectionSettingsProperty ::
  ColorCorrectionSettingsProperty
mkColorCorrectionSettingsProperty
  = ColorCorrectionSettingsProperty
      {globalColorCorrections = Prelude.Nothing}
instance ToResourceProperties ColorCorrectionSettingsProperty where
  toResourceProperties ColorCorrectionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ColorCorrectionSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlobalColorCorrections"
                              Prelude.<$> globalColorCorrections])}
instance JSON.ToJSON ColorCorrectionSettingsProperty where
  toJSON ColorCorrectionSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlobalColorCorrections"
                 Prelude.<$> globalColorCorrections]))
instance Property "GlobalColorCorrections" ColorCorrectionSettingsProperty where
  type PropertyType "GlobalColorCorrections" ColorCorrectionSettingsProperty = [ColorCorrectionProperty]
  set newValue ColorCorrectionSettingsProperty {}
    = ColorCorrectionSettingsProperty
        {globalColorCorrections = Prelude.pure newValue, ..}