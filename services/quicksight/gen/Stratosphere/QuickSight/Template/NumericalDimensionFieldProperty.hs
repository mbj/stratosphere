module Stratosphere.QuickSight.Template.NumericalDimensionFieldProperty (
        module Exports, NumericalDimensionFieldProperty(..),
        mkNumericalDimensionFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumberFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericalDimensionFieldProperty
  = NumericalDimensionFieldProperty {column :: ColumnIdentifierProperty,
                                     fieldId :: (Value Prelude.Text),
                                     formatConfiguration :: (Prelude.Maybe NumberFormatConfigurationProperty),
                                     hierarchyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericalDimensionFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> NumericalDimensionFieldProperty
mkNumericalDimensionFieldProperty column fieldId
  = NumericalDimensionFieldProperty
      {column = column, fieldId = fieldId,
       formatConfiguration = Prelude.Nothing,
       hierarchyId = Prelude.Nothing}
instance ToResourceProperties NumericalDimensionFieldProperty where
  toResourceProperties NumericalDimensionFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NumericalDimensionField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                               (JSON..=) "HierarchyId" Prelude.<$> hierarchyId]))}
instance JSON.ToJSON NumericalDimensionFieldProperty where
  toJSON NumericalDimensionFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                  (JSON..=) "HierarchyId" Prelude.<$> hierarchyId])))
instance Property "Column" NumericalDimensionFieldProperty where
  type PropertyType "Column" NumericalDimensionFieldProperty = ColumnIdentifierProperty
  set newValue NumericalDimensionFieldProperty {..}
    = NumericalDimensionFieldProperty {column = newValue, ..}
instance Property "FieldId" NumericalDimensionFieldProperty where
  type PropertyType "FieldId" NumericalDimensionFieldProperty = Value Prelude.Text
  set newValue NumericalDimensionFieldProperty {..}
    = NumericalDimensionFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" NumericalDimensionFieldProperty where
  type PropertyType "FormatConfiguration" NumericalDimensionFieldProperty = NumberFormatConfigurationProperty
  set newValue NumericalDimensionFieldProperty {..}
    = NumericalDimensionFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}
instance Property "HierarchyId" NumericalDimensionFieldProperty where
  type PropertyType "HierarchyId" NumericalDimensionFieldProperty = Value Prelude.Text
  set newValue NumericalDimensionFieldProperty {..}
    = NumericalDimensionFieldProperty
        {hierarchyId = Prelude.pure newValue, ..}