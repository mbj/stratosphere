module Stratosphere.Kendra.DataSource.SalesforceStandardObjectAttachmentConfigurationProperty (
        module Exports,
        SalesforceStandardObjectAttachmentConfigurationProperty(..),
        mkSalesforceStandardObjectAttachmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceStandardObjectAttachmentConfigurationProperty
  = SalesforceStandardObjectAttachmentConfigurationProperty {documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                             fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty])}
mkSalesforceStandardObjectAttachmentConfigurationProperty ::
  SalesforceStandardObjectAttachmentConfigurationProperty
mkSalesforceStandardObjectAttachmentConfigurationProperty
  = SalesforceStandardObjectAttachmentConfigurationProperty
      {documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties SalesforceStandardObjectAttachmentConfigurationProperty where
  toResourceProperties
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceStandardObjectAttachmentConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocumentTitleFieldName"
                              Prelude.<$> documentTitleFieldName,
                            (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])}
instance JSON.ToJSON SalesforceStandardObjectAttachmentConfigurationProperty where
  toJSON SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocumentTitleFieldName"
                 Prelude.<$> documentTitleFieldName,
               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))
instance Property "DocumentTitleFieldName" SalesforceStandardObjectAttachmentConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceStandardObjectAttachmentConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = SalesforceStandardObjectAttachmentConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceStandardObjectAttachmentConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceStandardObjectAttachmentConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set
    newValue
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = SalesforceStandardObjectAttachmentConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}