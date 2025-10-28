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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofilecredentials.html>
    SAPODataConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofilecredentials.html#cfn-appflow-connectorprofile-sapodataconnectorprofilecredentials-basicauthcredentials>
                                                 basicAuthCredentials :: (Prelude.Maybe BasicAuthCredentialsProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-sapodataconnectorprofilecredentials.html#cfn-appflow-connectorprofile-sapodataconnectorprofilecredentials-oauthcredentials>
                                                 oAuthCredentials :: (Prelude.Maybe OAuthCredentialsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAPODataConnectorProfileCredentialsProperty ::
  SAPODataConnectorProfileCredentialsProperty
mkSAPODataConnectorProfileCredentialsProperty
  = SAPODataConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), basicAuthCredentials = Prelude.Nothing,
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