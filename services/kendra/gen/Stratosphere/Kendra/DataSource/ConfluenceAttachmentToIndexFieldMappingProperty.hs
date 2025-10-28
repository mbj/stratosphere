module Stratosphere.Kendra.DataSource.ConfluenceAttachmentToIndexFieldMappingProperty (
        ConfluenceAttachmentToIndexFieldMappingProperty(..),
        mkConfluenceAttachmentToIndexFieldMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceAttachmentToIndexFieldMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html>
    ConfluenceAttachmentToIndexFieldMappingProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-datasourcefieldname>
                                                     dataSourceFieldName :: (Value Prelude.Text),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-datefieldformat>
                                                     dateFieldFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-indexfieldname>
                                                     indexFieldName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceAttachmentToIndexFieldMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ConfluenceAttachmentToIndexFieldMappingProperty
mkConfluenceAttachmentToIndexFieldMappingProperty
  dataSourceFieldName
  indexFieldName
  = ConfluenceAttachmentToIndexFieldMappingProperty
      {haddock_workaround_ = (),
       dataSourceFieldName = dataSourceFieldName,
       indexFieldName = indexFieldName, dateFieldFormat = Prelude.Nothing}
instance ToResourceProperties ConfluenceAttachmentToIndexFieldMappingProperty where
  toResourceProperties
    ConfluenceAttachmentToIndexFieldMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceAttachmentToIndexFieldMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceFieldName" JSON..= dataSourceFieldName,
                            "IndexFieldName" JSON..= indexFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat]))}
instance JSON.ToJSON ConfluenceAttachmentToIndexFieldMappingProperty where
  toJSON ConfluenceAttachmentToIndexFieldMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceFieldName" JSON..= dataSourceFieldName,
               "IndexFieldName" JSON..= indexFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DateFieldFormat" Prelude.<$> dateFieldFormat])))
instance Property "DataSourceFieldName" ConfluenceAttachmentToIndexFieldMappingProperty where
  type PropertyType "DataSourceFieldName" ConfluenceAttachmentToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceAttachmentToIndexFieldMappingProperty {..}
    = ConfluenceAttachmentToIndexFieldMappingProperty
        {dataSourceFieldName = newValue, ..}
instance Property "DateFieldFormat" ConfluenceAttachmentToIndexFieldMappingProperty where
  type PropertyType "DateFieldFormat" ConfluenceAttachmentToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceAttachmentToIndexFieldMappingProperty {..}
    = ConfluenceAttachmentToIndexFieldMappingProperty
        {dateFieldFormat = Prelude.pure newValue, ..}
instance Property "IndexFieldName" ConfluenceAttachmentToIndexFieldMappingProperty where
  type PropertyType "IndexFieldName" ConfluenceAttachmentToIndexFieldMappingProperty = Value Prelude.Text
  set newValue ConfluenceAttachmentToIndexFieldMappingProperty {..}
    = ConfluenceAttachmentToIndexFieldMappingProperty
        {indexFieldName = newValue, ..}