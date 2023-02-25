module Stratosphere.AppFlow.Flow.SalesforceDestinationPropertiesProperty (
        module Exports, SalesforceDestinationPropertiesProperty(..),
        mkSalesforceDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceDestinationPropertiesProperty
  = SalesforceDestinationPropertiesProperty {dataTransferApi :: (Prelude.Maybe (Value Prelude.Text)),
                                             errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                             idFieldNames :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                             object :: (Value Prelude.Text),
                                             writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
mkSalesforceDestinationPropertiesProperty ::
  Value Prelude.Text -> SalesforceDestinationPropertiesProperty
mkSalesforceDestinationPropertiesProperty object
  = SalesforceDestinationPropertiesProperty
      {object = object, dataTransferApi = Prelude.Nothing,
       errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties SalesforceDestinationPropertiesProperty where
  toResourceProperties SalesforceDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SalesforceDestinationProperties",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi,
                               (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON SalesforceDestinationPropertiesProperty where
  toJSON SalesforceDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi,
                  (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "DataTransferApi" SalesforceDestinationPropertiesProperty where
  type PropertyType "DataTransferApi" SalesforceDestinationPropertiesProperty = Value Prelude.Text
  set newValue SalesforceDestinationPropertiesProperty {..}
    = SalesforceDestinationPropertiesProperty
        {dataTransferApi = Prelude.pure newValue, ..}
instance Property "ErrorHandlingConfig" SalesforceDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" SalesforceDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue SalesforceDestinationPropertiesProperty {..}
    = SalesforceDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" SalesforceDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" SalesforceDestinationPropertiesProperty = ValueList (Value Prelude.Text)
  set newValue SalesforceDestinationPropertiesProperty {..}
    = SalesforceDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "Object" SalesforceDestinationPropertiesProperty where
  type PropertyType "Object" SalesforceDestinationPropertiesProperty = Value Prelude.Text
  set newValue SalesforceDestinationPropertiesProperty {..}
    = SalesforceDestinationPropertiesProperty {object = newValue, ..}
instance Property "WriteOperationType" SalesforceDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" SalesforceDestinationPropertiesProperty = Value Prelude.Text
  set newValue SalesforceDestinationPropertiesProperty {..}
    = SalesforceDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}