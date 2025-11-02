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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogtoindexfieldmapping.html>
    ConfluenceBlogToIndexFieldMappingProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogtoindexfieldmapping.html#cfn-kendra-datasource-confluenceblogtoindexfieldmapping-datasourcefieldname>
                                               dataSourceFieldName :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogtoindexfieldmapping.html#cfn-kendra-datasource-confluenceblogtoindexfieldmapping-datefieldformat>
                                               dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogtoindexfieldmapping.html#cfn-kendra-datasource-confluenceblogtoindexfieldmapping-indexfieldname>
                                               indexFieldName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceBlogToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfluenceBlogToIndexFieldMappingProperty
mkConfluenceBlogToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = ConfluenceBlogToIndexFieldMappingProperty
      {haddock_workaround_ = (),
       dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties ConfluenceBlogToIndexFieldMappingProperty where
  toResourceProperties ConfluenceBlogToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceBlogToIndexFieldMapping",
         supportsTags = Prelude.False,
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