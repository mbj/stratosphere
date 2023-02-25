module Stratosphere.Kendra.DataSource.ConfluenceBlogToIndexFieldMappingProperty (
        ConfluenceBlogToIndexFieldMappingProperty(..),
        mkConfluenceBlogToIndexFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceBlogToIndexFieldMappingProperty
  = ConfluenceBlogToIndexFieldMappingProperty {dataSourceFieldName :: (Value Prelude.Text),
                                               dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                               indexFieldName :: (Value Prelude.Text)}
mkConfluenceBlogToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfluenceBlogToIndexFieldMappingProperty
mkConfluenceBlogToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = ConfluenceBlogToIndexFieldMappingProperty
      {dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties ConfluenceBlogToIndexFieldMappingProperty where
  toResourceProperties ConfluenceBlogToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceBlogToIndexFieldMapping",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceFieldName" JSON..= dataSourceFieldName,
                            "IndexFieldName" JSON..= indexFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat]))}
instance JSON.ToJSON ConfluenceBlogToIndexFieldMappingProperty where
  toJSON ConfluenceBlogToIndexFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceFieldName" JSON..= dataSourceFieldName,
               "IndexFieldName" JSON..= indexFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat])))
instance Property "DataSourceFieldName" ConfluenceBlogToIndexFieldMappingProperty where
  type PropertyType "DataSourceFieldName" ConfluenceBlogToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceBlogToIndexFieldMappingProperty {..}
    = ConfluenceBlogToIndexFieldMappingProperty
        {dataSourceFieldName = newValue, ..}
instance Property "DateFieldFormat" ConfluenceBlogToIndexFieldMappingProperty where
  type PropertyType "DateFieldFormat" ConfluenceBlogToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceBlogToIndexFieldMappingProperty {..}
    = ConfluenceBlogToIndexFieldMappingProperty
        {dateFieldFormat = Prelude.pure newValue, ..}
instance Property "IndexFieldName" ConfluenceBlogToIndexFieldMappingProperty where
  type PropertyType "IndexFieldName" ConfluenceBlogToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceBlogToIndexFieldMappingProperty {..}
    = ConfluenceBlogToIndexFieldMappingProperty
        {indexFieldName = newValue, ..}