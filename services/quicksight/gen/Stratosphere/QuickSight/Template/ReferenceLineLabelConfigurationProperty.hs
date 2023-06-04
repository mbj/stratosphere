module Stratosphere.QuickSight.Template.ReferenceLineLabelConfigurationProperty (
        module Exports, ReferenceLineLabelConfigurationProperty(..),
        mkReferenceLineLabelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineCustomLabelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineValueLabelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineLabelConfigurationProperty
  = ReferenceLineLabelConfigurationProperty {customLabelConfiguration :: (Prelude.Maybe ReferenceLineCustomLabelConfigurationProperty),
                                             fontColor :: (Prelude.Maybe (Value Prelude.Text)),
                                             fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                                             horizontalPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                             valueLabelConfiguration :: (Prelude.Maybe ReferenceLineValueLabelConfigurationProperty),
                                             verticalPosition :: (Prelude.Maybe (Value Prelude.Text))}
mkReferenceLineLabelConfigurationProperty ::
  ReferenceLineLabelConfigurationProperty
mkReferenceLineLabelConfigurationProperty
  = ReferenceLineLabelConfigurationProperty
      {customLabelConfiguration = Prelude.Nothing,
       fontColor = Prelude.Nothing, fontConfiguration = Prelude.Nothing,
       horizontalPosition = Prelude.Nothing,
       valueLabelConfiguration = Prelude.Nothing,
       verticalPosition = Prelude.Nothing}
instance ToResourceProperties ReferenceLineLabelConfigurationProperty where
  toResourceProperties ReferenceLineLabelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineLabelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabelConfiguration"
                              Prelude.<$> customLabelConfiguration,
                            (JSON..=) "FontColor" Prelude.<$> fontColor,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "HorizontalPosition" Prelude.<$> horizontalPosition,
                            (JSON..=) "ValueLabelConfiguration"
                              Prelude.<$> valueLabelConfiguration,
                            (JSON..=) "VerticalPosition" Prelude.<$> verticalPosition])}
instance JSON.ToJSON ReferenceLineLabelConfigurationProperty where
  toJSON ReferenceLineLabelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabelConfiguration"
                 Prelude.<$> customLabelConfiguration,
               (JSON..=) "FontColor" Prelude.<$> fontColor,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "HorizontalPosition" Prelude.<$> horizontalPosition,
               (JSON..=) "ValueLabelConfiguration"
                 Prelude.<$> valueLabelConfiguration,
               (JSON..=) "VerticalPosition" Prelude.<$> verticalPosition]))
instance Property "CustomLabelConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "CustomLabelConfiguration" ReferenceLineLabelConfigurationProperty = ReferenceLineCustomLabelConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {customLabelConfiguration = Prelude.pure newValue, ..}
instance Property "FontColor" ReferenceLineLabelConfigurationProperty where
  type PropertyType "FontColor" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {fontColor = Prelude.pure newValue, ..}
instance Property "FontConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "FontConfiguration" ReferenceLineLabelConfigurationProperty = FontConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "HorizontalPosition" ReferenceLineLabelConfigurationProperty where
  type PropertyType "HorizontalPosition" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {horizontalPosition = Prelude.pure newValue, ..}
instance Property "ValueLabelConfiguration" ReferenceLineLabelConfigurationProperty where
  type PropertyType "ValueLabelConfiguration" ReferenceLineLabelConfigurationProperty = ReferenceLineValueLabelConfigurationProperty
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {valueLabelConfiguration = Prelude.pure newValue, ..}
instance Property "VerticalPosition" ReferenceLineLabelConfigurationProperty where
  type PropertyType "VerticalPosition" ReferenceLineLabelConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineLabelConfigurationProperty {..}
    = ReferenceLineLabelConfigurationProperty
        {verticalPosition = Prelude.pure newValue, ..}