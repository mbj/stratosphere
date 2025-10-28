module Stratosphere.AppFlow.ConnectorProfile.ZendeskConnectorProfileCredentialsProperty (
        module Exports, ZendeskConnectorProfileCredentialsProperty(..),
        mkZendeskConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskConnectorProfileCredentialsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html>
    ZendeskConnectorProfileCredentialsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-accesstoken>
                                                accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-clientid>
                                                clientId :: (Value Prelude.Text),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-clientsecret>
                                                clientSecret :: (Value Prelude.Text),
                                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-zendeskconnectorprofilecredentials.html#cfn-appflow-connectorprofile-zendeskconnectorprofilecredentials-connectoroauthrequest>
                                                connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZendeskConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ZendeskConnectorProfileCredentialsProperty
mkZendeskConnectorProfileCredentialsProperty clientId clientSecret
  = ZendeskConnectorProfileCredentialsProperty
      {clientId = clientId, clientSecret = clientSecret,
       accessToken = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing}
instance ToResourceProperties ZendeskConnectorProfileCredentialsProperty where
  toResourceProperties
    ZendeskConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ZendeskConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "ConnectorOAuthRequest"
                                 Prelude.<$> connectorOAuthRequest]))}
instance JSON.ToJSON ZendeskConnectorProfileCredentialsProperty where
  toJSON ZendeskConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "ConnectorOAuthRequest"
                    Prelude.<$> connectorOAuthRequest])))
instance Property "AccessToken" ZendeskConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" ZendeskConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ZendeskConnectorProfileCredentialsProperty {..}
    = ZendeskConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" ZendeskConnectorProfileCredentialsProperty where
  type PropertyType "ClientId" ZendeskConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ZendeskConnectorProfileCredentialsProperty {..}
    = ZendeskConnectorProfileCredentialsProperty
        {clientId = newValue, ..}
instance Property "ClientSecret" ZendeskConnectorProfileCredentialsProperty where
  type PropertyType "ClientSecret" ZendeskConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ZendeskConnectorProfileCredentialsProperty {..}
    = ZendeskConnectorProfileCredentialsProperty
        {clientSecret = newValue, ..}
instance Property "ConnectorOAuthRequest" ZendeskConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" ZendeskConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue ZendeskConnectorProfileCredentialsProperty {..}
    = ZendeskConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}