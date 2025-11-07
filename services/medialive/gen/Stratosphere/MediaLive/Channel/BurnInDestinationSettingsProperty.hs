module Stratosphere.MediaLive.Channel.BurnInDestinationSettingsProperty (
        module Exports, BurnInDestinationSettingsProperty(..),
        mkBurnInDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BurnInDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html>
    BurnInDestinationSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-alignment>
                                       alignment :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-backgroundcolor>
                                       backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-backgroundopacity>
                                       backgroundOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-font>
                                       font :: (Prelude.Maybe InputLocationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontcolor>
                                       fontColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontopacity>
                                       fontOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontresolution>
                                       fontResolution :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontsize>
                                       fontSize :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-outlinecolor>
                                       outlineColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-outlinesize>
                                       outlineSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowcolor>
                                       shadowColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowopacity>
                                       shadowOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowxoffset>
                                       shadowXOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowyoffset>
                                       shadowYOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-subtitlerows>
                                       subtitleRows :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-teletextgridcontrol>
                                       teletextGridControl :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-xposition>
                                       xPosition :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-yposition>
                                       yPosition :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBurnInDestinationSettingsProperty ::
  BurnInDestinationSettingsProperty
mkBurnInDestinationSettingsProperty
  = BurnInDestinationSettingsProperty
      {haddock_workaround_ = (), alignment = Prelude.Nothing,
       backgroundColor = Prelude.Nothing,
       backgroundOpacity = Prelude.Nothing, font = Prelude.Nothing,
       fontColor = Prelude.Nothing, fontOpacity = Prelude.Nothing,
       fontResolution = Prelude.Nothing, fontSize = Prelude.Nothing,
       outlineColor = Prelude.Nothing, outlineSize = Prelude.Nothing,
       shadowColor = Prelude.Nothing, shadowOpacity = Prelude.Nothing,
       shadowXOffset = Prelude.Nothing, shadowYOffset = Prelude.Nothing,
       subtitleRows = Prelude.Nothing,
       teletextGridControl = Prelude.Nothing, xPosition = Prelude.Nothing,
       yPosition = Prelude.Nothing}
instance ToResourceProperties BurnInDestinationSettingsProperty where
  toResourceProperties BurnInDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.BurnInDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "BackgroundOpacity" Prelude.<$> backgroundOpacity,
                            (JSON..=) "Font" Prelude.<$> font,
                            (JSON..=) "FontColor" Prelude.<$> fontColor,
                            (JSON..=) "FontOpacity" Prelude.<$> fontOpacity,
                            (JSON..=) "FontResolution" Prelude.<$> fontResolution,
                            (JSON..=) "FontSize" Prelude.<$> fontSize,
                            (JSON..=) "OutlineColor" Prelude.<$> outlineColor,
                            (JSON..=) "OutlineSize" Prelude.<$> outlineSize,
                            (JSON..=) "ShadowColor" Prelude.<$> shadowColor,
                            (JSON..=) "ShadowOpacity" Prelude.<$> shadowOpacity,
                            (JSON..=) "ShadowXOffset" Prelude.<$> shadowXOffset,
                            (JSON..=) "ShadowYOffset" Prelude.<$> shadowYOffset,
                            (JSON..=) "SubtitleRows" Prelude.<$> subtitleRows,
                            (JSON..=) "TeletextGridControl" Prelude.<$> teletextGridControl,
                            (JSON..=) "XPosition" Prelude.<$> xPosition,
                            (JSON..=) "YPosition" Prelude.<$> yPosition])}
instance JSON.ToJSON BurnInDestinationSettingsProperty where
  toJSON BurnInDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "BackgroundOpacity" Prelude.<$> backgroundOpacity,
               (JSON..=) "Font" Prelude.<$> font,
               (JSON..=) "FontColor" Prelude.<$> fontColor,
               (JSON..=) "FontOpacity" Prelude.<$> fontOpacity,
               (JSON..=) "FontResolution" Prelude.<$> fontResolution,
               (JSON..=) "FontSize" Prelude.<$> fontSize,
               (JSON..=) "OutlineColor" Prelude.<$> outlineColor,
               (JSON..=) "OutlineSize" Prelude.<$> outlineSize,
               (JSON..=) "ShadowColor" Prelude.<$> shadowColor,
               (JSON..=) "ShadowOpacity" Prelude.<$> shadowOpacity,
               (JSON..=) "ShadowXOffset" Prelude.<$> shadowXOffset,
               (JSON..=) "ShadowYOffset" Prelude.<$> shadowYOffset,
               (JSON..=) "SubtitleRows" Prelude.<$> subtitleRows,
               (JSON..=) "TeletextGridControl" Prelude.<$> teletextGridControl,
               (JSON..=) "XPosition" Prelude.<$> xPosition,
               (JSON..=) "YPosition" Prelude.<$> yPosition]))
instance Property "Alignment" BurnInDestinationSettingsProperty where
  type PropertyType "Alignment" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {alignment = Prelude.pure newValue, ..}
instance Property "BackgroundColor" BurnInDestinationSettingsProperty where
  type PropertyType "BackgroundColor" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BackgroundOpacity" BurnInDestinationSettingsProperty where
  type PropertyType "BackgroundOpacity" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {backgroundOpacity = Prelude.pure newValue, ..}
instance Property "Font" BurnInDestinationSettingsProperty where
  type PropertyType "Font" BurnInDestinationSettingsProperty = InputLocationProperty
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {font = Prelude.pure newValue, ..}
instance Property "FontColor" BurnInDestinationSettingsProperty where
  type PropertyType "FontColor" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {fontColor = Prelude.pure newValue, ..}
instance Property "FontOpacity" BurnInDestinationSettingsProperty where
  type PropertyType "FontOpacity" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {fontOpacity = Prelude.pure newValue, ..}
instance Property "FontResolution" BurnInDestinationSettingsProperty where
  type PropertyType "FontResolution" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {fontResolution = Prelude.pure newValue, ..}
instance Property "FontSize" BurnInDestinationSettingsProperty where
  type PropertyType "FontSize" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {fontSize = Prelude.pure newValue, ..}
instance Property "OutlineColor" BurnInDestinationSettingsProperty where
  type PropertyType "OutlineColor" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {outlineColor = Prelude.pure newValue, ..}
instance Property "OutlineSize" BurnInDestinationSettingsProperty where
  type PropertyType "OutlineSize" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {outlineSize = Prelude.pure newValue, ..}
instance Property "ShadowColor" BurnInDestinationSettingsProperty where
  type PropertyType "ShadowColor" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {shadowColor = Prelude.pure newValue, ..}
instance Property "ShadowOpacity" BurnInDestinationSettingsProperty where
  type PropertyType "ShadowOpacity" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {shadowOpacity = Prelude.pure newValue, ..}
instance Property "ShadowXOffset" BurnInDestinationSettingsProperty where
  type PropertyType "ShadowXOffset" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {shadowXOffset = Prelude.pure newValue, ..}
instance Property "ShadowYOffset" BurnInDestinationSettingsProperty where
  type PropertyType "ShadowYOffset" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {shadowYOffset = Prelude.pure newValue, ..}
instance Property "SubtitleRows" BurnInDestinationSettingsProperty where
  type PropertyType "SubtitleRows" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {subtitleRows = Prelude.pure newValue, ..}
instance Property "TeletextGridControl" BurnInDestinationSettingsProperty where
  type PropertyType "TeletextGridControl" BurnInDestinationSettingsProperty = Value Prelude.Text
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {teletextGridControl = Prelude.pure newValue, ..}
instance Property "XPosition" BurnInDestinationSettingsProperty where
  type PropertyType "XPosition" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {xPosition = Prelude.pure newValue, ..}
instance Property "YPosition" BurnInDestinationSettingsProperty where
  type PropertyType "YPosition" BurnInDestinationSettingsProperty = Value Prelude.Integer
  set newValue BurnInDestinationSettingsProperty {..}
    = BurnInDestinationSettingsProperty
        {yPosition = Prelude.pure newValue, ..}