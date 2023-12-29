module Stratosphere.AppFlow.ConnectorProfile.ConnectorProfileConfigProperty (
        module Exports, ConnectorProfileConfigProperty(..),
        mkConnectorProfileConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorProfilePropertiesProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorProfileConfigProperty
  = ConnectorProfileConfigProperty {connectorProfileCredentials :: (Prelude.Maybe ConnectorProfileCredentialsProperty),
                                    connectorProfileProperties :: (Prelude.Maybe ConnectorProfilePropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorProfileConfigProperty :: ConnectorProfileConfigProperty
mkConnectorProfileConfigProperty
  = ConnectorProfileConfigProperty
      {connectorProfileCredentials = Prelude.Nothing,
       connectorProfileProperties = Prelude.Nothing}
instance ToResourceProperties ConnectorProfileConfigProperty where
  toResourceProperties ConnectorProfileConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ConnectorProfileConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectorProfileCredentials"
                              Prelude.<$> connectorProfileCredentials,
                            (JSON..=) "ConnectorProfileProperties"
                              Prelude.<$> connectorProfileProperties])}
instance JSON.ToJSON ConnectorProfileConfigProperty where
  toJSON ConnectorProfileConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectorProfileCredentials"
                 Prelude.<$> connectorProfileCredentials,
               (JSON..=) "ConnectorProfileProperties"
                 Prelude.<$> connectorProfileProperties]))
instance Property "ConnectorProfileCredentials" ConnectorProfileConfigProperty where
  type PropertyType "ConnectorProfileCredentials" ConnectorProfileConfigProperty = ConnectorProfileCredentialsProperty
  set newValue ConnectorProfileConfigProperty {..}
    = ConnectorProfileConfigProperty
        {connectorProfileCredentials = Prelude.pure newValue, ..}
instance Property "ConnectorProfileProperties" ConnectorProfileConfigProperty where
  type PropertyType "ConnectorProfileProperties" ConnectorProfileConfigProperty = ConnectorProfilePropertiesProperty
  set newValue ConnectorProfileConfigProperty {..}
    = ConnectorProfileConfigProperty
        {connectorProfileProperties = Prelude.pure newValue, ..}