module Stratosphere.Kendra.DataSource.SalesforceStandardKnowledgeArticleTypeConfigurationProperty (
        module Exports,
        SalesforceStandardKnowledgeArticleTypeConfigurationProperty(..),
        mkSalesforceStandardKnowledgeArticleTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceStandardKnowledgeArticleTypeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html>
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {haddock_workaround_ :: (),
                                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-documentdatafieldname>
                                                                 documentDataFieldName :: (Value Prelude.Text),
                                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-documenttitlefieldname>
                                                                 documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-fieldmappings>
                                                                 fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceStandardKnowledgeArticleTypeConfigurationProperty ::
  Value Prelude.Text
  -> SalesforceStandardKnowledgeArticleTypeConfigurationProperty
mkSalesforceStandardKnowledgeArticleTypeConfigurationProperty
  documentDataFieldName
  = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
      {haddock_workaround_ = (),
       documentDataFieldName = documentDataFieldName,
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties SalesforceStandardKnowledgeArticleTypeConfigurationProperty where
  toResourceProperties
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceStandardKnowledgeArticleTypeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))}
instance JSON.ToJSON SalesforceStandardKnowledgeArticleTypeConfigurationProperty where
  toJSON
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])))
instance Property "DocumentDataFieldName" SalesforceStandardKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "DocumentDataFieldName" SalesforceStandardKnowledgeArticleTypeConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" SalesforceStandardKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceStandardKnowledgeArticleTypeConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceStandardKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceStandardKnowledgeArticleTypeConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set
    newValue
    SalesforceStandardKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}