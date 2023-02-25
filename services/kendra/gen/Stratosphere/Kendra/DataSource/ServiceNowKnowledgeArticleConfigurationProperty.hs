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
  = ServiceNowKnowledgeArticleConfigurationProperty {crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                                     documentDataFieldName :: (Value Prelude.Text),
                                                     documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                     excludeAttachmentFilePatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                                     fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                     filterQuery :: (Prelude.Maybe (Value Prelude.Text)),
                                                     includeAttachmentFilePatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkServiceNowKnowledgeArticleConfigurationProperty ::
  Value Prelude.Text
  -> ServiceNowKnowledgeArticleConfigurationProperty
mkServiceNowKnowledgeArticleConfigurationProperty
  documentDataFieldName
  = ServiceNowKnowledgeArticleConfigurationProperty
      {documentDataFieldName = documentDataFieldName,
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
  type PropertyType "ExcludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty = ValueList (Value Prelude.Text)
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
  type PropertyType "IncludeAttachmentFilePatterns" ServiceNowKnowledgeArticleConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue ServiceNowKnowledgeArticleConfigurationProperty {..}
    = ServiceNowKnowledgeArticleConfigurationProperty
        {includeAttachmentFilePatterns = Prelude.pure newValue, ..}