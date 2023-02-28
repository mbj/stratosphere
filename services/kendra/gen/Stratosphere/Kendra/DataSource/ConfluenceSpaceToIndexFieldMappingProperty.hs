module Stratosphere.Kendra.DataSource.ConfluenceSpaceToIndexFieldMappingProperty (
        ConfluenceSpaceToIndexFieldMappingProperty(..),
        mkConfluenceSpaceToIndexFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceSpaceToIndexFieldMappingProperty
  = ConfluenceSpaceToIndexFieldMappingProperty {dataSourceFieldName :: (Value Prelude.Text),
                                                dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                indexFieldName :: (Value Prelude.Text)}
mkConfluenceSpaceToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfluenceSpaceToIndexFieldMappingProperty
mkConfluenceSpaceToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = ConfluenceSpaceToIndexFieldMappingProperty
      {dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties ConfluenceSpaceToIndexFieldMappingProperty where
  toResourceProperties
    ConfluenceSpaceToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceSpaceToIndexFieldMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceFieldName" JSON..= dataSourceFieldName,
                            "IndexFieldName" JSON..= indexFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat]))}
instance JSON.ToJSON ConfluenceSpaceToIndexFieldMappingProperty where
  toJSON ConfluenceSpaceToIndexFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceFieldName" JSON..= dataSourceFieldName,
               "IndexFieldName" JSON..= indexFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat])))
instance Property "DataSourceFieldName" ConfluenceSpaceToIndexFieldMappingProperty where
  type PropertyType "DataSourceFieldName" ConfluenceSpaceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceSpaceToIndexFieldMappingProperty {..}
    = ConfluenceSpaceToIndexFieldMappingProperty
        {dataSourceFieldName = newValue, ..}
instance Property "DateFieldFormat" ConfluenceSpaceToIndexFieldMappingProperty where
  type PropertyType "DateFieldFormat" ConfluenceSpaceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceSpaceToIndexFieldMappingProperty {..}
    = ConfluenceSpaceToIndexFieldMappingProperty
        {dateFieldFormat = Prelude.pure newValue, ..}
instance Property "IndexFieldName" ConfluenceSpaceToIndexFieldMappingProperty where
  type PropertyType "IndexFieldName" ConfluenceSpaceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceSpaceToIndexFieldMappingProperty {..}
    = ConfluenceSpaceToIndexFieldMappingProperty
        {indexFieldName = newValue, ..}