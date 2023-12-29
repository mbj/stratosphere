module Stratosphere.QuickSight.Dashboard.ColumnConfigurationProperty (
        module Exports, ColumnConfigurationProperty(..),
        mkColumnConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColorsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnConfigurationProperty
  = ColumnConfigurationProperty {colorsConfiguration :: (Prelude.Maybe ColorsConfigurationProperty),
                                 column :: ColumnIdentifierProperty,
                                 formatConfiguration :: (Prelude.Maybe FormatConfigurationProperty),
                                 role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnConfigurationProperty ::
  ColumnIdentifierProperty -> ColumnConfigurationProperty
mkColumnConfigurationProperty column
  = ColumnConfigurationProperty
      {column = column, colorsConfiguration = Prelude.Nothing,
       formatConfiguration = Prelude.Nothing, role = Prelude.Nothing}
instance ToResourceProperties ColumnConfigurationProperty where
  toResourceProperties ColumnConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColumnConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column]
                           (Prelude.catMaybes
                              [(JSON..=) "ColorsConfiguration" Prelude.<$> colorsConfiguration,
                               (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                               (JSON..=) "Role" Prelude.<$> role]))}
instance JSON.ToJSON ColumnConfigurationProperty where
  toJSON ColumnConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column]
              (Prelude.catMaybes
                 [(JSON..=) "ColorsConfiguration" Prelude.<$> colorsConfiguration,
                  (JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                  (JSON..=) "Role" Prelude.<$> role])))
instance Property "ColorsConfiguration" ColumnConfigurationProperty where
  type PropertyType "ColorsConfiguration" ColumnConfigurationProperty = ColorsConfigurationProperty
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {colorsConfiguration = Prelude.pure newValue, ..}
instance Property "Column" ColumnConfigurationProperty where
  type PropertyType "Column" ColumnConfigurationProperty = ColumnIdentifierProperty
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty {column = newValue, ..}
instance Property "FormatConfiguration" ColumnConfigurationProperty where
  type PropertyType "FormatConfiguration" ColumnConfigurationProperty = FormatConfigurationProperty
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty
        {formatConfiguration = Prelude.pure newValue, ..}
instance Property "Role" ColumnConfigurationProperty where
  type PropertyType "Role" ColumnConfigurationProperty = Value Prelude.Text
  set newValue ColumnConfigurationProperty {..}
    = ColumnConfigurationProperty {role = Prelude.pure newValue, ..}