module Stratosphere.MediaLive.Channel.DvbSubDestinationSettingsProperty (
        module Exports, DvbSubDestinationSettingsProperty(..),
        mkDvbSubDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbSubDestinationSettingsProperty
  = DvbSubDestinationSettingsProperty {alignment :: (Prelude.Maybe (Value Prelude.Text)),
                                       backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       backgroundOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       font :: (Prelude.Maybe InputLocationProperty),
                                       fontColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       fontOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       fontResolution :: (Prelude.Maybe (Value Prelude.Integer)),
                                       fontSize :: (Prelude.Maybe (Value Prelude.Text)),
                                       outlineColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       outlineSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                       shadowColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       shadowOpacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                       shadowXOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                       shadowYOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                       teletextGridControl :: (Prelude.Maybe (Value Prelude.Text)),
                                       xPosition :: (Prelude.Maybe (Value Prelude.Integer)),
                                       yPosition :: (Prelude.Maybe (Value Prelude.Integer))}
mkDvbSubDestinationSettingsProperty ::
  DvbSubDestinationSettingsProperty
mkDvbSubDestinationSettingsProperty
  = DvbSubDestinationSettingsProperty
      {alignment = Prelude.Nothing, backgroundColor = Prelude.Nothing,
       backgroundOpacity = Prelude.Nothing, font = Prelude.Nothing,
       fontColor = Prelude.Nothing, fontOpacity = Prelude.Nothing,
       fontResolution = Prelude.Nothing, fontSize = Prelude.Nothing,
       outlineColor = Prelude.Nothing, outlineSize = Prelude.Nothing,
       shadowColor = Prelude.Nothing, shadowOpacity = Prelude.Nothing,
       shadowXOffset = Prelude.Nothing, shadowYOffset = Prelude.Nothing,
       teletextGridControl = Prelude.Nothing, xPosition = Prelude.Nothing,
       yPosition = Prelude.Nothing}
instance ToResourceProperties DvbSubDestinationSettingsProperty where
  toResourceProperties DvbSubDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbSubDestinationSettings",
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
                            (JSON..=) "TeletextGridControl" Prelude.<$> teletextGridControl,
                            (JSON..=) "XPosition" Prelude.<$> xPosition,
                            (JSON..=) "YPosition" Prelude.<$> yPosition])}
instance JSON.ToJSON DvbSubDestinationSettingsProperty where
  toJSON DvbSubDestinationSettingsProperty {..}
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
               (JSON..=) "TeletextGridControl" Prelude.<$> teletextGridControl,
               (JSON..=) "XPosition" Prelude.<$> xPosition,
               (JSON..=) "YPosition" Prelude.<$> yPosition]))
instance Property "Alignment" DvbSubDestinationSettingsProperty where
  type PropertyType "Alignment" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {alignment = Prelude.pure newValue, ..}
instance Property "BackgroundColor" DvbSubDestinationSettingsProperty where
  type PropertyType "BackgroundColor" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BackgroundOpacity" DvbSubDestinationSettingsProperty where
  type PropertyType "BackgroundOpacity" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {backgroundOpacity = Prelude.pure newValue, ..}
instance Property "Font" DvbSubDestinationSettingsProperty where
  type PropertyType "Font" DvbSubDestinationSettingsProperty = InputLocationProperty
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {font = Prelude.pure newValue, ..}
instance Property "FontColor" DvbSubDestinationSettingsProperty where
  type PropertyType "FontColor" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {fontColor = Prelude.pure newValue, ..}
instance Property "FontOpacity" DvbSubDestinationSettingsProperty where
  type PropertyType "FontOpacity" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {fontOpacity = Prelude.pure newValue, ..}
instance Property "FontResolution" DvbSubDestinationSettingsProperty where
  type PropertyType "FontResolution" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {fontResolution = Prelude.pure newValue, ..}
instance Property "FontSize" DvbSubDestinationSettingsProperty where
  type PropertyType "FontSize" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {fontSize = Prelude.pure newValue, ..}
instance Property "OutlineColor" DvbSubDestinationSettingsProperty where
  type PropertyType "OutlineColor" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {outlineColor = Prelude.pure newValue, ..}
instance Property "OutlineSize" DvbSubDestinationSettingsProperty where
  type PropertyType "OutlineSize" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {outlineSize = Prelude.pure newValue, ..}
instance Property "ShadowColor" DvbSubDestinationSettingsProperty where
  type PropertyType "ShadowColor" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {shadowColor = Prelude.pure newValue, ..}
instance Property "ShadowOpacity" DvbSubDestinationSettingsProperty where
  type PropertyType "ShadowOpacity" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {shadowOpacity = Prelude.pure newValue, ..}
instance Property "ShadowXOffset" DvbSubDestinationSettingsProperty where
  type PropertyType "ShadowXOffset" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {shadowXOffset = Prelude.pure newValue, ..}
instance Property "ShadowYOffset" DvbSubDestinationSettingsProperty where
  type PropertyType "ShadowYOffset" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {shadowYOffset = Prelude.pure newValue, ..}
instance Property "TeletextGridControl" DvbSubDestinationSettingsProperty where
  type PropertyType "TeletextGridControl" DvbSubDestinationSettingsProperty = Value Prelude.Text
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {teletextGridControl = Prelude.pure newValue, ..}
instance Property "XPosition" DvbSubDestinationSettingsProperty where
  type PropertyType "XPosition" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {xPosition = Prelude.pure newValue, ..}
instance Property "YPosition" DvbSubDestinationSettingsProperty where
  type PropertyType "YPosition" DvbSubDestinationSettingsProperty = Value Prelude.Integer
  set newValue DvbSubDestinationSettingsProperty {..}
    = DvbSubDestinationSettingsProperty
        {yPosition = Prelude.pure newValue, ..}