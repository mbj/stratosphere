module Stratosphere.QuickSight.Template.TableCellStyleProperty (
        module Exports, TableCellStyleProperty(..),
        mkTableCellStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GlobalTableBorderOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCellStyleProperty
  = TableCellStyleProperty {backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                            border :: (Prelude.Maybe GlobalTableBorderOptionsProperty),
                            fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                            height :: (Prelude.Maybe (Value Prelude.Double)),
                            horizontalTextAlignment :: (Prelude.Maybe (Value Prelude.Text)),
                            textWrap :: (Prelude.Maybe (Value Prelude.Text)),
                            verticalTextAlignment :: (Prelude.Maybe (Value Prelude.Text)),
                            visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCellStyleProperty :: TableCellStyleProperty
mkTableCellStyleProperty
  = TableCellStyleProperty
      {backgroundColor = Prelude.Nothing, border = Prelude.Nothing,
       fontConfiguration = Prelude.Nothing, height = Prelude.Nothing,
       horizontalTextAlignment = Prelude.Nothing,
       textWrap = Prelude.Nothing,
       verticalTextAlignment = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties TableCellStyleProperty where
  toResourceProperties TableCellStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableCellStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "Border" Prelude.<$> border,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "HorizontalTextAlignment"
                              Prelude.<$> horizontalTextAlignment,
                            (JSON..=) "TextWrap" Prelude.<$> textWrap,
                            (JSON..=) "VerticalTextAlignment"
                              Prelude.<$> verticalTextAlignment,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON TableCellStyleProperty where
  toJSON TableCellStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "Border" Prelude.<$> border,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "HorizontalTextAlignment"
                 Prelude.<$> horizontalTextAlignment,
               (JSON..=) "TextWrap" Prelude.<$> textWrap,
               (JSON..=) "VerticalTextAlignment"
                 Prelude.<$> verticalTextAlignment,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "BackgroundColor" TableCellStyleProperty where
  type PropertyType "BackgroundColor" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "Border" TableCellStyleProperty where
  type PropertyType "Border" TableCellStyleProperty = GlobalTableBorderOptionsProperty
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {border = Prelude.pure newValue, ..}
instance Property "FontConfiguration" TableCellStyleProperty where
  type PropertyType "FontConfiguration" TableCellStyleProperty = FontConfigurationProperty
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "Height" TableCellStyleProperty where
  type PropertyType "Height" TableCellStyleProperty = Value Prelude.Double
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {height = Prelude.pure newValue, ..}
instance Property "HorizontalTextAlignment" TableCellStyleProperty where
  type PropertyType "HorizontalTextAlignment" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {horizontalTextAlignment = Prelude.pure newValue, ..}
instance Property "TextWrap" TableCellStyleProperty where
  type PropertyType "TextWrap" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {textWrap = Prelude.pure newValue, ..}
instance Property "VerticalTextAlignment" TableCellStyleProperty where
  type PropertyType "VerticalTextAlignment" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {verticalTextAlignment = Prelude.pure newValue, ..}
instance Property "Visibility" TableCellStyleProperty where
  type PropertyType "Visibility" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {visibility = Prelude.pure newValue, ..}