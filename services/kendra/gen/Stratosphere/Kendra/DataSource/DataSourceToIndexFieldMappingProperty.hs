module Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty (
        DataSourceToIndexFieldMappingProperty(..),
        mkDataSourceToIndexFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceToIndexFieldMappingProperty
  = DataSourceToIndexFieldMappingProperty {dataSourceFieldName :: (Value Prelude.Text),
                                           dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                           indexFieldName :: (Value Prelude.Text)}
mkDataSourceToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataSourceToIndexFieldMappingProperty
mkDataSourceToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = DataSourceToIndexFieldMappingProperty
      {dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties DataSourceToIndexFieldMappingProperty where
  toResourceProperties DataSourceToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DataSourceToIndexFieldMapping",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceFieldName" JSON..= dataSourceFieldName,
                            "IndexFieldName" JSON..= indexFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat]))}
instance JSON.ToJSON DataSourceToIndexFieldMappingProperty where
  toJSON DataSourceToIndexFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceFieldName" JSON..= dataSourceFieldName,
               "IndexFieldName" JSON..= indexFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat])))
instance Property "DataSourceFieldName" DataSourceToIndexFieldMappingProperty where
  type PropertyType "DataSourceFieldName" DataSourceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue DataSourceToIndexFieldMappingProperty {..}
    = DataSourceToIndexFieldMappingProperty
        {dataSourceFieldName = newValue, ..}
instance Property "DateFieldFormat" DataSourceToIndexFieldMappingProperty where
  type PropertyType "DateFieldFormat" DataSourceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue DataSourceToIndexFieldMappingProperty {..}
    = DataSourceToIndexFieldMappingProperty
        {dateFieldFormat = Prelude.pure newValue, ..}
instance Property "IndexFieldName" DataSourceToIndexFieldMappingProperty where
  type PropertyType "IndexFieldName" DataSourceToIndexFieldMappingProperty = Value Prelude.Text
  set newValue DataSourceToIndexFieldMappingProperty {..}
    = DataSourceToIndexFieldMappingProperty
        {indexFieldName = newValue, ..}