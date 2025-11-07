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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html>
    EbuTtDDestinationSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-copyrightholder>
                                       copyrightHolder :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-defaultfontsize>
                                       defaultFontSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-defaultlineheight>
                                       defaultLineHeight :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-filllinegap>
                                       fillLineGap :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-fontfamily>
                                       fontFamily :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ebuttddestinationsettings.html#cfn-medialive-channel-ebuttddestinationsettings-stylecontrol>
                                       styleControl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbuTtDDestinationSettingsProperty ::
  EbuTtDDestinationSettingsProperty
mkEbuTtDDestinationSettingsProperty
  = EbuTtDDestinationSettingsProperty
      {haddock_workaround_ = (), copyrightHolder = Prelude.Nothing,
       defaultFontSize = Prelude.Nothing,
       defaultLineHeight = Prelude.Nothing, fillLineGap = Prelude.Nothing,
       fontFamily = Prelude.Nothing, styleControl = Prelude.Nothing}
instance ToResourceProperties EbuTtDDestinationSettingsProperty where
  toResourceProperties EbuTtDDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EbuTtDDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyrightHolder" Prelude.<$> copyrightHolder,
                            (JSON..=) "DefaultFontSize" Prelude.<$> defaultFontSize,
                            (JSON..=) "DefaultLineHeight" Prelude.<$> defaultLineHeight,
                            (JSON..=) "FillLineGap" Prelude.<$> fillLineGap,
                            (JSON..=) "FontFamily" Prelude.<$> fontFamily,
                            (JSON..=) "StyleControl" Prelude.<$> styleControl])}
instance JSON.ToJSON EbuTtDDestinationSettingsProperty where
  toJSON EbuTtDDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyrightHolder" Prelude.<$> copyrightHolder,
               (JSON..=) "DefaultFontSize" Prelude.<$> defaultFontSize,
               (JSON..=) "DefaultLineHeight" Prelude.<$> defaultLineHeight,
               (JSON..=) "FillLineGap" Prelude.<$> fillLineGap,
               (JSON..=) "FontFamily" Prelude.<$> fontFamily,
               (JSON..=) "StyleControl" Prelude.<$> styleControl]))
instance Property "CopyrightHolder" EbuTtDDestinationSettingsProperty where
  type PropertyType "CopyrightHolder" EbuTtDDestinationSettingsProperty = Value Prelude.Text
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {copyrightHolder = Prelude.pure newValue, ..}
instance Property "DefaultFontSize" EbuTtDDestinationSettingsProperty where
  type PropertyType "DefaultFontSize" EbuTtDDestinationSettingsProperty = Value Prelude.Integer
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {defaultFontSize = Prelude.pure newValue, ..}
instance Property "DefaultLineHeight" EbuTtDDestinationSettingsProperty where
  type PropertyType "DefaultLineHeight" EbuTtDDestinationSettingsProperty = Value Prelude.Integer
  set newValue EbuTtDDestinationSettingsProperty {..}
    = EbuTtDDestinationSettingsProperty
        {defaultLineHeight = Prelude.pure newValue, ..}
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