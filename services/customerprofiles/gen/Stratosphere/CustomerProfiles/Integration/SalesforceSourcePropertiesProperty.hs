module Stratosphere.CustomerProfiles.Integration.SalesforceSourcePropertiesProperty (
        SalesforceSourcePropertiesProperty(..),
        mkSalesforceSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceSourcePropertiesProperty
  = SalesforceSourcePropertiesProperty {enableDynamicFieldUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
                                        includeDeletedRecords :: (Prelude.Maybe (Value Prelude.Bool)),
                                        object :: (Value Prelude.Text)}
mkSalesforceSourcePropertiesProperty ::
  Value Prelude.Text -> SalesforceSourcePropertiesProperty
mkSalesforceSourcePropertiesProperty object
  = SalesforceSourcePropertiesProperty
      {object = object, enableDynamicFieldUpdate = Prelude.Nothing,
       includeDeletedRecords = Prelude.Nothing}
instance ToResourceProperties SalesforceSourcePropertiesProperty where
  toResourceProperties SalesforceSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.SalesforceSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableDynamicFieldUpdate"
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
                 [(JSON..=) "EnableDynamicFieldUpdate"
                    Prelude.<$> enableDynamicFieldUpdate,
                  (JSON..=) "IncludeDeletedRecords"
                    Prelude.<$> includeDeletedRecords])))
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