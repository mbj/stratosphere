module Stratosphere.AppFlow.ConnectorProfile.SalesforceConnectorProfilePropertiesProperty (
        SalesforceConnectorProfilePropertiesProperty(..),
        mkSalesforceConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceConnectorProfilePropertiesProperty
  = SalesforceConnectorProfilePropertiesProperty {instanceUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                                  isSandboxEnvironment :: (Prelude.Maybe (Value Prelude.Bool)),
                                                  usePrivateLinkForMetadataAndAuthorization :: (Prelude.Maybe (Value Prelude.Bool))}
mkSalesforceConnectorProfilePropertiesProperty ::
  SalesforceConnectorProfilePropertiesProperty
mkSalesforceConnectorProfilePropertiesProperty
  = SalesforceConnectorProfilePropertiesProperty
      {instanceUrl = Prelude.Nothing,
       isSandboxEnvironment = Prelude.Nothing,
       usePrivateLinkForMetadataAndAuthorization = Prelude.Nothing}
instance ToResourceProperties SalesforceConnectorProfilePropertiesProperty where
  toResourceProperties
    SalesforceConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SalesforceConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceUrl" Prelude.<$> instanceUrl,
                            (JSON..=) "isSandboxEnvironment" Prelude.<$> isSandboxEnvironment,
                            (JSON..=) "usePrivateLinkForMetadataAndAuthorization"
                              Prelude.<$> usePrivateLinkForMetadataAndAuthorization])}
instance JSON.ToJSON SalesforceConnectorProfilePropertiesProperty where
  toJSON SalesforceConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceUrl" Prelude.<$> instanceUrl,
               (JSON..=) "isSandboxEnvironment" Prelude.<$> isSandboxEnvironment,
               (JSON..=) "usePrivateLinkForMetadataAndAuthorization"
                 Prelude.<$> usePrivateLinkForMetadataAndAuthorization]))
instance Property "InstanceUrl" SalesforceConnectorProfilePropertiesProperty where
  type PropertyType "InstanceUrl" SalesforceConnectorProfilePropertiesProperty = Value Prelude.Text
  set newValue SalesforceConnectorProfilePropertiesProperty {..}
    = SalesforceConnectorProfilePropertiesProperty
        {instanceUrl = Prelude.pure newValue, ..}
instance Property "isSandboxEnvironment" SalesforceConnectorProfilePropertiesProperty where
  type PropertyType "isSandboxEnvironment" SalesforceConnectorProfilePropertiesProperty = Value Prelude.Bool
  set newValue SalesforceConnectorProfilePropertiesProperty {..}
    = SalesforceConnectorProfilePropertiesProperty
        {isSandboxEnvironment = Prelude.pure newValue, ..}
instance Property "usePrivateLinkForMetadataAndAuthorization" SalesforceConnectorProfilePropertiesProperty where
  type PropertyType "usePrivateLinkForMetadataAndAuthorization" SalesforceConnectorProfilePropertiesProperty = Value Prelude.Bool
  set newValue SalesforceConnectorProfilePropertiesProperty {..}
    = SalesforceConnectorProfilePropertiesProperty
        {usePrivateLinkForMetadataAndAuthorization = Prelude.pure newValue,
         ..}