module Stratosphere.Kendra.DataSource.ServiceNowServiceCatalogConfigurationProperty (
        module Exports, ServiceNowServiceCatalogConfigurationProperty(..),
        mkServiceNowServiceCatalogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowServiceCatalogConfigurationProperty
  = ServiceNowServiceCatalogConfigurationProperty {crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   documentDataFieldName :: (Value Prelude.Text),
                                                   documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   excludeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                   includeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text))}
mkServiceNowServiceCatalogConfigurationProperty ::
  Value Prelude.Text -> ServiceNowServiceCatalogConfigurationProperty
mkServiceNowServiceCatalogConfigurationProperty
  documentDataFieldName
  = ServiceNowServiceCatalogConfigurationProperty
      {documentDataFieldName = documentDataFieldName,
       crawlAttachments = Prelude.Nothing,
       documentTitleFieldName = Prelude.Nothing,
       excludeAttachmentFilePatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       includeAttachmentFilePatterns = Prelude.Nothing}
instance ToResourceProperties ServiceNowServiceCatalogConfigurationProperty where
  toResourceProperties
    ServiceNowServiceCatalogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ServiceNowServiceCatalogConfiguration",
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
                               (JSON..=) "IncludeAttachmentFilePatterns"
                                 Prelude.<$> includeAttachmentFilePatterns]))}
instance JSON.ToJSON ServiceNowServiceCatalogConfigurationProperty where
  toJSON ServiceNowServiceCatalogConfigurationProperty {..}
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
                  (JSON..=) "IncludeAttachmentFilePatterns"
                    Prelude.<$> includeAttachmentFilePatterns])))
instance Property "CrawlAttachments" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "CrawlAttachments" ServiceNowServiceCatalogConfigurationProperty = Value Prelude.Bool
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {crawlAttachments = Prelude.pure newValue, ..}
instance Property "DocumentDataFieldName" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "DocumentDataFieldName" ServiceNowServiceCatalogConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" ServiceNowServiceCatalogConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "ExcludeAttachmentFilePatterns" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "ExcludeAttachmentFilePatterns" ServiceNowServiceCatalogConfigurationProperty = ValueList Prelude.Text
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {excludeAttachmentFilePatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "FieldMappings" ServiceNowServiceCatalogConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "IncludeAttachmentFilePatterns" ServiceNowServiceCatalogConfigurationProperty where
  type PropertyType "IncludeAttachmentFilePatterns" ServiceNowServiceCatalogConfigurationProperty = ValueList Prelude.Text
  set newValue ServiceNowServiceCatalogConfigurationProperty {..}
    = ServiceNowServiceCatalogConfigurationProperty
        {includeAttachmentFilePatterns = Prelude.pure newValue, ..}