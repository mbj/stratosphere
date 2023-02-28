module Stratosphere.Kendra.DataSource.SalesforceCustomKnowledgeArticleTypeConfigurationProperty (
        module Exports,
        SalesforceCustomKnowledgeArticleTypeConfigurationProperty(..),
        mkSalesforceCustomKnowledgeArticleTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceCustomKnowledgeArticleTypeConfigurationProperty
  = SalesforceCustomKnowledgeArticleTypeConfigurationProperty {documentDataFieldName :: (Value Prelude.Text),
                                                               documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                               fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                               name :: (Value Prelude.Text)}
mkSalesforceCustomKnowledgeArticleTypeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SalesforceCustomKnowledgeArticleTypeConfigurationProperty
mkSalesforceCustomKnowledgeArticleTypeConfigurationProperty
  documentDataFieldName
  name
  = SalesforceCustomKnowledgeArticleTypeConfigurationProperty
      {documentDataFieldName = documentDataFieldName, name = name,
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  toResourceProperties
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceCustomKnowledgeArticleTypeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))}
instance JSON.ToJSON SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  toJSON
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])))
instance Property "DocumentDataFieldName" SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "DocumentDataFieldName" SalesforceCustomKnowledgeArticleTypeConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceCustomKnowledgeArticleTypeConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceCustomKnowledgeArticleTypeConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceCustomKnowledgeArticleTypeConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceCustomKnowledgeArticleTypeConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set
    newValue
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceCustomKnowledgeArticleTypeConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "Name" SalesforceCustomKnowledgeArticleTypeConfigurationProperty where
  type PropertyType "Name" SalesforceCustomKnowledgeArticleTypeConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceCustomKnowledgeArticleTypeConfigurationProperty {..}
    = SalesforceCustomKnowledgeArticleTypeConfigurationProperty
        {name = newValue, ..}