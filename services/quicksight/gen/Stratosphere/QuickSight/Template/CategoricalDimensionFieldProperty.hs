module Stratosphere.QuickSight.Template.CategoricalDimensionFieldProperty (
        module Exports, CategoricalDimensionFieldProperty(..),
        mkCategoricalDimensionFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.StringFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoricalDimensionFieldProperty
  = CategoricalDimensionFieldProperty {column :: ColumnIdentifierProperty,
                                       fieldId :: (Value Prelude.Text),
                                       formatConfiguration :: (Prelude.Maybe StringFormatConfigurationProperty),
                                       hierarchyId :: (Prelude.Maybe (Value Prelude.Text))}
mkCategoricalDimensionFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> CategoricalDimensionFieldProperty
mkCategoricalDimensionFieldProperty column fieldId
  = CategoricalDimensionFieldProperty
      {column = column, fieldId = fieldId,
       formatConfiguration = Prelude.Nothing,
       hierarchyId = Prelude.Nothing}
instance ToResourceProperties CategoricalDimensionFieldProperty where
  toResourceProperties CategoricalDimensionFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CategoricalDimensionField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                               (JSON..=) "HierarchyId" Prelude.<$> hierarchyId]))}
instance JSON.ToJSON CategoricalDimensionFieldProperty where
  toJSON CategoricalDimensionFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration,
                  (JSON..=) "HierarchyId" Prelude.<$> hierarchyId])))
instance Property "Column" CategoricalDimensionFieldProperty where
  type PropertyType "Column" CategoricalDimensionFieldProperty = ColumnIdentifierProperty
  set newValue CategoricalDimensionFieldProperty {..}
    = CategoricalDimensionFieldProperty {column = newValue, ..}
instance Property "FieldId" CategoricalDimensionFieldProperty where
  type PropertyType "FieldId" CategoricalDimensionFieldProperty = Value Prelude.Text
  set newValue CategoricalDimensionFieldProperty {..}
    = CategoricalDimensionFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" CategoricalDimensionFieldProperty where
  type PropertyType "FormatConfiguration" CategoricalDimensionFieldProperty = StringFormatConfigurationProperty
  set newValue CategoricalDimensionFieldProperty {..}
    = CategoricalDimensionFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}
instance Property "HierarchyId" CategoricalDimensionFieldProperty where
  type PropertyType "HierarchyId" CategoricalDimensionFieldProperty = Value Prelude.Text
  set newValue CategoricalDimensionFieldProperty {..}
    = CategoricalDimensionFieldProperty
        {hierarchyId = Prelude.pure newValue, ..}