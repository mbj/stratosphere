module Stratosphere.Kendra.DataSource.ConfluencePageToIndexFieldMappingProperty (
        ConfluencePageToIndexFieldMappingProperty(..),
        mkConfluencePageToIndexFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluencePageToIndexFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepagetoindexfieldmapping.html>
    ConfluencePageToIndexFieldMappingProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepagetoindexfieldmapping.html#cfn-kendra-datasource-confluencepagetoindexfieldmapping-datasourcefieldname>
                                               dataSourceFieldName :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepagetoindexfieldmapping.html#cfn-kendra-datasource-confluencepagetoindexfieldmapping-datefieldformat>
                                               dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluencepagetoindexfieldmapping.html#cfn-kendra-datasource-confluencepagetoindexfieldmapping-indexfieldname>
                                               indexFieldName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluencePageToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConfluencePageToIndexFieldMappingProperty
mkConfluencePageToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = ConfluencePageToIndexFieldMappingProperty
      {haddock_workaround_ = (),
       dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties ConfluencePageToIndexFieldMappingProperty where
  toResourceProperties ConfluencePageToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluencePageToIndexFieldMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceFieldName" JSON..= dataSourceFieldName,
                            "IndexFieldName" JSON..= indexFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat]))}
instance JSON.ToJSON ConfluencePageToIndexFieldMappingProperty where
  toJSON ConfluencePageToIndexFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceFieldName" JSON..= dataSourceFieldName,
               "IndexFieldName" JSON..= indexFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat])))
instance Property "DataSourceFieldName" ConfluencePageToIndexFieldMappingProperty where
  type PropertyType "DataSourceFieldName" ConfluencePageToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluencePageToIndexFieldMappingProperty {..}
    = ConfluencePageToIndexFieldMappingProperty
        {dataSourceFieldName = newValue, ..}
instance Property "DateFieldFormat" ConfluencePageToIndexFieldMappingProperty where
  type PropertyType "DateFieldFormat" ConfluencePageToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluencePageToIndexFieldMappingProperty {..}
    = ConfluencePageToIndexFieldMappingProperty
        {dateFieldFormat = Prelude.pure newValue, ..}
instance Property "IndexFieldName" ConfluencePageToIndexFieldMappingProperty where
  type PropertyType "IndexFieldName" ConfluencePageToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluencePageToIndexFieldMappingProperty {..}
    = ConfluencePageToIndexFieldMappingProperty
        {indexFieldName = newValue, ..}