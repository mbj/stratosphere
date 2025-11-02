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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-colorcorrectionsettings.html>
    ColorCorrectionSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-colorcorrectionsettings.html#cfn-medialive-channel-colorcorrectionsettings-globalcolorcorrections>
                                     globalColorCorrections :: (Prelude.Maybe [ColorCorrectionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorCorrectionSettingsProperty ::
  ColorCorrectionSettingsProperty
mkColorCorrectionSettingsProperty
  = ColorCorrectionSettingsProperty
      {haddock_workaround_ = (),
       globalColorCorrections = Prelude.Nothing}
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
  set newValue ColorCorrectionSettingsProperty {..}
    = ColorCorrectionSettingsProperty
        {globalColorCorrections = Prelude.pure newValue, ..}