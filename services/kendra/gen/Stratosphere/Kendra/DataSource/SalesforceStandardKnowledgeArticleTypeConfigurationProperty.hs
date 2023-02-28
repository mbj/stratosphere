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
  = SalesforceStandardKnowledgeArticleTypeConfigurationProperty {documentDataFieldName :: (Value Prelude.Text),
                                                                 documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                                 fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty])}
mkSalesforceStandardKnowledgeArticleTypeConfigurationProperty ::
  Value Prelude.Text
  -> SalesforceStandardKnowledgeArticleTypeConfigurationProperty
mkSalesforceStandardKnowledgeArticleTypeConfigurationProperty
  documentDataFieldName
  = SalesforceStandardKnowledgeArticleTypeConfigurationProperty
      {documentDataFieldName = documentDataFieldName,
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