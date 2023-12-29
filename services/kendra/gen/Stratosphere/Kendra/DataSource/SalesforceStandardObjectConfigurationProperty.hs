module Stratosphere.Kendra.DataSource.SalesforceStandardObjectConfigurationProperty (
        module Exports, SalesforceStandardObjectConfigurationProperty(..),
        mkSalesforceStandardObjectConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceStandardObjectConfigurationProperty
  = SalesforceStandardObjectConfigurationProperty {documentDataFieldName :: (Value Prelude.Text),
                                                   documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                                   name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceStandardObjectConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SalesforceStandardObjectConfigurationProperty
mkSalesforceStandardObjectConfigurationProperty
  documentDataFieldName
  name
  = SalesforceStandardObjectConfigurationProperty
      {documentDataFieldName = documentDataFieldName, name = name,
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties SalesforceStandardObjectConfigurationProperty where
  toResourceProperties
    SalesforceStandardObjectConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceStandardObjectConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentDataFieldName" JSON..= documentDataFieldName,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))}
instance JSON.ToJSON SalesforceStandardObjectConfigurationProperty where
  toJSON SalesforceStandardObjectConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentDataFieldName" JSON..= documentDataFieldName,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])))
instance Property "DocumentDataFieldName" SalesforceStandardObjectConfigurationProperty where
  type PropertyType "DocumentDataFieldName" SalesforceStandardObjectConfigurationProperty = Value Prelude.Text
  set newValue SalesforceStandardObjectConfigurationProperty {..}
    = SalesforceStandardObjectConfigurationProperty
        {documentDataFieldName = newValue, ..}
instance Property "DocumentTitleFieldName" SalesforceStandardObjectConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceStandardObjectConfigurationProperty = Value Prelude.Text
  set newValue SalesforceStandardObjectConfigurationProperty {..}
    = SalesforceStandardObjectConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceStandardObjectConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceStandardObjectConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue SalesforceStandardObjectConfigurationProperty {..}
    = SalesforceStandardObjectConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "Name" SalesforceStandardObjectConfigurationProperty where
  type PropertyType "Name" SalesforceStandardObjectConfigurationProperty = Value Prelude.Text
  set newValue SalesforceStandardObjectConfigurationProperty {..}
    = SalesforceStandardObjectConfigurationProperty
        {name = newValue, ..}