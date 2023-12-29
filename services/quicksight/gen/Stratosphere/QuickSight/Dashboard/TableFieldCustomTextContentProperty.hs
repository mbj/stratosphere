module Stratosphere.QuickSight.Dashboard.TableFieldCustomTextContentProperty (
        module Exports, TableFieldCustomTextContentProperty(..),
        mkTableFieldCustomTextContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldCustomTextContentProperty
  = TableFieldCustomTextContentProperty {fontConfiguration :: FontConfigurationProperty,
                                         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldCustomTextContentProperty ::
  FontConfigurationProperty -> TableFieldCustomTextContentProperty
mkTableFieldCustomTextContentProperty fontConfiguration
  = TableFieldCustomTextContentProperty
      {fontConfiguration = fontConfiguration, value = Prelude.Nothing}
instance ToResourceProperties TableFieldCustomTextContentProperty where
  toResourceProperties TableFieldCustomTextContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableFieldCustomTextContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FontConfiguration" JSON..= fontConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TableFieldCustomTextContentProperty where
  toJSON TableFieldCustomTextContentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FontConfiguration" JSON..= fontConfiguration]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "FontConfiguration" TableFieldCustomTextContentProperty where
  type PropertyType "FontConfiguration" TableFieldCustomTextContentProperty = FontConfigurationProperty
  set newValue TableFieldCustomTextContentProperty {..}
    = TableFieldCustomTextContentProperty
        {fontConfiguration = newValue, ..}
instance Property "Value" TableFieldCustomTextContentProperty where
  type PropertyType "Value" TableFieldCustomTextContentProperty = Value Prelude.Text
  set newValue TableFieldCustomTextContentProperty {..}
    = TableFieldCustomTextContentProperty
        {value = Prelude.pure newValue, ..}