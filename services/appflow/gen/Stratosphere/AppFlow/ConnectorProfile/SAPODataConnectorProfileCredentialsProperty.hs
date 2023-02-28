module Stratosphere.AppFlow.ConnectorProfile.SAPODataConnectorProfileCredentialsProperty (
        module Exports, SAPODataConnectorProfileCredentialsProperty(..),
        mkSAPODataConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.BasicAuthCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.OAuthCredentialsProperty as Exports
import Stratosphere.ResourceProperties
data SAPODataConnectorProfileCredentialsProperty
  = SAPODataConnectorProfileCredentialsProperty {basicAuthCredentials :: (Prelude.Maybe BasicAuthCredentialsProperty),
                                                 oAuthCredentials :: (Prelude.Maybe OAuthCredentialsProperty)}
mkSAPODataConnectorProfileCredentialsProperty ::
  SAPODataConnectorProfileCredentialsProperty
mkSAPODataConnectorProfileCredentialsProperty
  = SAPODataConnectorProfileCredentialsProperty
      {basicAuthCredentials = Prelude.Nothing,
       oAuthCredentials = Prelude.Nothing}
instance ToResourceProperties SAPODataConnectorProfileCredentialsProperty where
  toResourceProperties
    SAPODataConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SAPODataConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasicAuthCredentials" Prelude.<$> basicAuthCredentials,
                            (JSON..=) "OAuthCredentials" Prelude.<$> oAuthCredentials])}
instance JSON.ToJSON SAPODataConnectorProfileCredentialsProperty where
  toJSON SAPODataConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasicAuthCredentials" Prelude.<$> basicAuthCredentials,
               (JSON..=) "OAuthCredentials" Prelude.<$> oAuthCredentials]))
instance Property "BasicAuthCredentials" SAPODataConnectorProfileCredentialsProperty where
  type PropertyType "BasicAuthCredentials" SAPODataConnectorProfileCredentialsProperty = BasicAuthCredentialsProperty
  set newValue SAPODataConnectorProfileCredentialsProperty {..}
    = SAPODataConnectorProfileCredentialsProperty
        {basicAuthCredentials = Prelude.pure newValue, ..}
instance Property "OAuthCredentials" SAPODataConnectorProfileCredentialsProperty where
  type PropertyType "OAuthCredentials" SAPODataConnectorProfileCredentialsProperty = OAuthCredentialsProperty
  set newValue SAPODataConnectorProfileCredentialsProperty {..}
    = SAPODataConnectorProfileCredentialsProperty
        {oAuthCredentials = Prelude.pure newValue, ..}