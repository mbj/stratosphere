module Stratosphere.AppFlow.Flow.SAPODataDestinationPropertiesProperty (
        module Exports, SAPODataDestinationPropertiesProperty(..),
        mkSAPODataDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SuccessResponseHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAPODataDestinationPropertiesProperty
  = SAPODataDestinationPropertiesProperty {errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                           idFieldNames :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                           objectPath :: (Value Prelude.Text),
                                           successResponseHandlingConfig :: (Prelude.Maybe SuccessResponseHandlingConfigProperty),
                                           writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
mkSAPODataDestinationPropertiesProperty ::
  Value Prelude.Text -> SAPODataDestinationPropertiesProperty
mkSAPODataDestinationPropertiesProperty objectPath
  = SAPODataDestinationPropertiesProperty
      {objectPath = objectPath, errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       successResponseHandlingConfig = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties SAPODataDestinationPropertiesProperty where
  toResourceProperties SAPODataDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SAPODataDestinationProperties",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectPath" JSON..= objectPath]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "SuccessResponseHandlingConfig"
                                 Prelude.<$> successResponseHandlingConfig,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON SAPODataDestinationPropertiesProperty where
  toJSON SAPODataDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectPath" JSON..= objectPath]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "SuccessResponseHandlingConfig"
                    Prelude.<$> successResponseHandlingConfig,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "ErrorHandlingConfig" SAPODataDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" SAPODataDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" SAPODataDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" SAPODataDestinationPropertiesProperty = ValueList (Value Prelude.Text)
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "ObjectPath" SAPODataDestinationPropertiesProperty where
  type PropertyType "ObjectPath" SAPODataDestinationPropertiesProperty = Value Prelude.Text
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty {objectPath = newValue, ..}
instance Property "SuccessResponseHandlingConfig" SAPODataDestinationPropertiesProperty where
  type PropertyType "SuccessResponseHandlingConfig" SAPODataDestinationPropertiesProperty = SuccessResponseHandlingConfigProperty
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {successResponseHandlingConfig = Prelude.pure newValue, ..}
instance Property "WriteOperationType" SAPODataDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" SAPODataDestinationPropertiesProperty = Value Prelude.Text
  set newValue SAPODataDestinationPropertiesProperty {..}
    = SAPODataDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}