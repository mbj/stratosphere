module Stratosphere.AppFlow.Flow.SalesforceSourcePropertiesProperty (
        SalesforceSourcePropertiesProperty(..),
        mkSalesforceSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceSourcePropertiesProperty
  = SalesforceSourcePropertiesProperty {dataTransferApi :: (Prelude.Maybe (Value Prelude.Text)),
                                        enableDynamicFieldUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
                                        includeDeletedRecords :: (Prelude.Maybe (Value Prelude.Bool)),
                                        object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceSourcePropertiesProperty ::
  Value Prelude.Text -> SalesforceSourcePropertiesProperty
mkSalesforceSourcePropertiesProperty object
  = SalesforceSourcePropertiesProperty
      {object = object, dataTransferApi = Prelude.Nothing,
       enableDynamicFieldUpdate = Prelude.Nothing,
       includeDeletedRecords = Prelude.Nothing}
instance ToResourceProperties SalesforceSourcePropertiesProperty where
  toResourceProperties SalesforceSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SalesforceSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi,
                               (JSON..=) "EnableDynamicFieldUpdate"
                                 Prelude.<$> enableDynamicFieldUpdate,
                               (JSON..=) "IncludeDeletedRecords"
                                 Prelude.<$> includeDeletedRecords]))}
instance JSON.ToJSON SalesforceSourcePropertiesProperty where
  toJSON SalesforceSourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "DataTransferApi" Prelude.<$> dataTransferApi,
                  (JSON..=) "EnableDynamicFieldUpdate"
                    Prelude.<$> enableDynamicFieldUpdate,
                  (JSON..=) "IncludeDeletedRecords"
                    Prelude.<$> includeDeletedRecords])))
instance Property "DataTransferApi" SalesforceSourcePropertiesProperty where
  type PropertyType "DataTransferApi" SalesforceSourcePropertiesProperty = Value Prelude.Text
  set newValue SalesforceSourcePropertiesProperty {..}
    = SalesforceSourcePropertiesProperty
        {dataTransferApi = Prelude.pure newValue, ..}
instance Property "EnableDynamicFieldUpdate" SalesforceSourcePropertiesProperty where
  type PropertyType "EnableDynamicFieldUpdate" SalesforceSourcePropertiesProperty = Value Prelude.Bool
  set newValue SalesforceSourcePropertiesProperty {..}
    = SalesforceSourcePropertiesProperty
        {enableDynamicFieldUpdate = Prelude.pure newValue, ..}
instance Property "IncludeDeletedRecords" SalesforceSourcePropertiesProperty where
  type PropertyType "IncludeDeletedRecords" SalesforceSourcePropertiesProperty = Value Prelude.Bool
  set newValue SalesforceSourcePropertiesProperty {..}
    = SalesforceSourcePropertiesProperty
        {includeDeletedRecords = Prelude.pure newValue, ..}
instance Property "Object" SalesforceSourcePropertiesProperty where
  type PropertyType "Object" SalesforceSourcePropertiesProperty = Value Prelude.Text
  set newValue SalesforceSourcePropertiesProperty {..}
    = SalesforceSourcePropertiesProperty {object = newValue, ..}