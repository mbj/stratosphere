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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html>
    ServiceNowServiceCatalogConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-crawlattachments>
                                                   crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-documentdatafieldname>
                                                   documentDataFieldName :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-documenttitlefieldname>
                                                   documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-excludeattachmentfilepatterns>
                                                   excludeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-fieldmappings>
                                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-includeattachmentfilepatterns>
                                                   includeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNowServiceCatalogConfigurationProperty ::
  Value Prelude.Text -> ServiceNowServiceCatalogConfigurationProperty
mkServiceNowServiceCatalogConfigurationProperty
  documentDataFieldName
  = ServiceNowServiceCatalogConfigurationProperty
      {haddock_workaround_ = (),
       documentDataFieldName = documentDataFieldName,
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