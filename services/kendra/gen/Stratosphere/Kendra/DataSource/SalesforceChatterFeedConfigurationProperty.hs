module Stratosphere.Kendra.DataSource.SalesforceChatterFeedConfigurationProperty (
        module Exports, SalesforceChatterFeedConfigurationProperty(..),
        mkSalesforceChatterFeedConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceChatterFeedConfigurationProperty
  = SalesforceChatterFeedConfigurationProperty {documentDataFieldName :: (Value Prelude.Text),
                                                documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                includeFilterTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSalesforceChatterFeedConfigurationProperty ::
  Value Prelude.Text -> SalesforceChatterFeedConfigurationProperty
mkSalesforceChatterFeedConfigurationProperty documentDataFieldName
  = SalesforceChatterFeedConfigurationProperty
      {documentDataFieldName = documentDataFieldName,
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       includeFilterTypes = Prelude.Nothing}
instance ToResourceProperties SalesforceChatterFeedConfigurationProperty where
  toResourceProperties
    SalesforceChatterFeedConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceChatterFeedConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "IncludeFilterTypes" Prelude.<$> includeFilterTypes]))}
instance JSON.ToJSON SalesforceChatterFeedConfigurationProperty where
  toJSON SalesforceChatterFeedConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "IncludeFilterTypes" Prelude.<$> includeFilterTypes])))
instance Property "DocumentDataFieldName" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "DocumentDataFieldName" SalesforceChatterFeedConfigurationProperty = Value Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceChatterFeedConfigurationProperty = Value Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceChatterFeedConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "IncludeFilterTypes" SalesforceChatterFeedConfigurationProperty where
  type PropertyType "IncludeFilterTypes" SalesforceChatterFeedConfigurationProperty = ValueList Prelude.Text
  set newValue SalesforceChatterFeedConfigurationProperty {..}
    = SalesforceChatterFeedConfigurationProperty
        {includeFilterTypes = Prelude.pure newValue, ..}