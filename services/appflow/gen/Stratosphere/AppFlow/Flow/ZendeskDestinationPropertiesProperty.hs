module Stratosphere.AppFlow.Flow.ZendeskDestinationPropertiesProperty (
        module Exports, ZendeskDestinationPropertiesProperty(..),
        mkZendeskDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskDestinationPropertiesProperty
  = ZendeskDestinationPropertiesProperty {errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                          idFieldNames :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          object :: (Value Prelude.Text),
                                          writeOperationType :: (Prelude.Maybe (Value Prelude.Text))}
mkZendeskDestinationPropertiesProperty ::
  Value Prelude.Text -> ZendeskDestinationPropertiesProperty
mkZendeskDestinationPropertiesProperty object
  = ZendeskDestinationPropertiesProperty
      {object = object, errorHandlingConfig = Prelude.Nothing,
       idFieldNames = Prelude.Nothing,
       writeOperationType = Prelude.Nothing}
instance ToResourceProperties ZendeskDestinationPropertiesProperty where
  toResourceProperties ZendeskDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ZendeskDestinationProperties",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                               (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                               (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType]))}
instance JSON.ToJSON ZendeskDestinationPropertiesProperty where
  toJSON ZendeskDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig,
                  (JSON..=) "IdFieldNames" Prelude.<$> idFieldNames,
                  (JSON..=) "WriteOperationType" Prelude.<$> writeOperationType])))
instance Property "ErrorHandlingConfig" ZendeskDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" ZendeskDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IdFieldNames" ZendeskDestinationPropertiesProperty where
  type PropertyType "IdFieldNames" ZendeskDestinationPropertiesProperty = ValueList (Value Prelude.Text)
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {idFieldNames = Prelude.pure newValue, ..}
instance Property "Object" ZendeskDestinationPropertiesProperty where
  type PropertyType "Object" ZendeskDestinationPropertiesProperty = Value Prelude.Text
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty {object = newValue, ..}
instance Property "WriteOperationType" ZendeskDestinationPropertiesProperty where
  type PropertyType "WriteOperationType" ZendeskDestinationPropertiesProperty = Value Prelude.Text
  set newValue ZendeskDestinationPropertiesProperty {..}
    = ZendeskDestinationPropertiesProperty
        {writeOperationType = Prelude.pure newValue, ..}