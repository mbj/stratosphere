module Stratosphere.Kendra.DataSource.ServiceNowKnowledgeArticleConfigurationProperty (
        module Exports,
        ServiceNowKnowledgeArticleConfigurationProperty(..),
        mkServiceNowKnowledgeArticleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowKnowledgeArticleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html>
    ServiceNowKnowledgeArticleConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-crawlattachments>
                                                     crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-documentdatafieldname>
                                                     documentDataFieldName :: (Value Prelude.Text),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-documenttitlefieldname>
                                                     documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-excludeattachmentfilepatterns>
                                                     excludeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-fieldmappings>
                                                     fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-filterquery>
                                                     filterQuery :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-includeattachmentfilepatterns>
                                                     includeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNowKnowledgeArticleConfigurationProperty ::
  Value Prelude.Text
  -> ServiceNowKnowledgeArticleConfigurationProperty
mkServiceNowKnowledgeArticleConfigurationProperty
  documentDataFieldName
  = ServiceNowKnowledgeArticleConfigurationProperty
      {haddock_workaround_ = (),
       documentDataFieldName = documentDataFieldName,
       crawlAttachments = Prelude.Nothing,
       documentTitleFieldName = Prelude.Nothing,
       excludeAttachmentFilePatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing, filterQuery = Prelude.Nothing,
       includeAttachmentFilePatterns = Prelude.Nothing}
instance ToResourceProperties ServiceNowKnowledgeArticleConfigurationProperty where
  toResourceProperties
    ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ServiceNowKnowledgeArticleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                               (JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "ExcludeAttachmentFilePatterns"
                                 Prelude.<$> excludeAttachmentFilePatterns,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "FilterQuery" Prelude.<$> filterQuery,
                               (JSON..=) "IncludeAttachmentFilePatterns"
                                 Prelude.<$> includeAttachmentFilePatterns]))}
instance JSON.ToJSON ServiceNowKnowledgeArticleConfigurationProperty where
  toJSON ServiceNowKnowledgeArticleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                  (JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "ExcludeAttachmentFilePatterns"
                    Prelude.<$> excludeAttachmentFilePatterns,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "FilterQuery" Prelude.<$> filterQuery,
                  (JSON..=) "IncludeAttachmentFilePatterns"
                    Prelude.<$> includeAttachmentFilePatterns])))
instance Property "CrawlAttachments" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "CrawlAttachments" ServiceNowKnowledgeArticleConfigurationProperty = Value Prelude.Bool
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {crawlAttachments = Prelude.pure newValue, ..}
instance Property "DocumentDataFieldName" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "DocumentDataFieldName" ServiceNowKnowledgeArticleConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" ServiceNowKnowledgeArticleConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "ExcludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "ExcludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty = ValueList Prelude.Text
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {excludeAttachmentFilePatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "FieldMappings" ServiceNowKnowledgeArticleConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "FilterQuery" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "FilterQuery" ServiceNowKnowledgeArticleConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {filterQuery = Prelude.pure newValue, ..}
instance Property "IncludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty where
  type PropertyType "IncludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty = ValueList Prelude.Text
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {includeAttachmentFilePatterns = Prelude.pure newValue, ..}