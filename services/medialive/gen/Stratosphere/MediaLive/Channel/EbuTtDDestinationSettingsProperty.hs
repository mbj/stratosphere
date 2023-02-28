module Stratosphere.MediaLive.Channel.EbuTtDDestinationSettingsProperty (
        EbuTtDDestinationSettingsProperty(..),
        mkEbuTtDDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbuTtDDestinationSettingsProperty
  = EbuTtDDestinationSettingsProperty {copyrightHolder :: (Prelude.Maybe (Value Prelude.Text)),
                                       fillLineGap :: (Prelude.Maybe (Value Prelude.Text)),
                                       fontFamily :: (Prelude.Maybe (Value Prelude.Text)),
                                       styleControl :: (Prelude.Maybe (Value Prelude.Text))}
mkEbuTtDDestinationSettingsProperty ::
  EbuTtDDestinationSettingsProperty
mkEbuTtDDestinationSettingsProperty
  = EbuTtDDestinationSettingsProperty
      {copyrightHolder = Prelude.Nothing, fillLineGap = Prelude.Nothing,
       fontFamily = Prelude.Nothing, styleControl = Prelude.Nothing}
instance ToResourceProperties EbuTtDDestinationSettingsProperty where
  toResourceProperties EbuTtDDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EbuTtDDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyrightHolder" Prelude.<$> copyrightHolder,
                            (JSON..=) "FillLineGap" Prelude.<$> fillLineGap,
                            (JSON..=) "FontFamily" Prelude.<$> fontFamily,
                            (JSON..=) "StyleControl" Prelude.<$> styleControl])}
instance JSON.ToJSON EbuTtDDestinationSettingsProperty where
  toJSON EbuTtDDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyrightHolder" Prelude.<$> copyrightHolder,
               (JSON..=) "FillLineGap" Prelude.<$> fillLineGap,
               (JSON..=) "FontFamily" Prelude.<$> fontFamily,
               (JSON..=) "StyleControl" Prelude.<$> styleControl]))
instance Property "CopyrightHolder" EbuTtDDestinationSettingsProperty where
  type PropertyType "CopyrightHolder" EbuTtDDestinationSettingsProperty = Value Prelude.Text
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {copyrightHolder = Prelude.pure newValue, ..}
instance Property "FillLineGap" EbuTtDDestinationSettingsProperty where
  type PropertyType "FillLineGap" EbuTtDDestinationSettingsProperty = Value Prelude.Text
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {fillLineGap = Prelude.pure newValue, ..}
instance Property "FontFamily" EbuTtDDestinationSettingsProperty where
  type PropertyType "FontFamily" EbuTtDDestinationSettingsProperty = Value Prelude.Text
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {fontFamily = Prelude.pure newValue, ..}
instance Property "StyleControl" EbuTtDDestinationSettingsProperty where
  type PropertyType "StyleControl" EbuTtDDestinationSettingsProperty = Value Prelude.Text
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {styleControl = Prelude.pure newValue, ..}