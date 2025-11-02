module Stratosphere.AppFlow.ConnectorProfile.SlackConnectorProfileCredentialsProperty (
        module Exports, SlackConnectorProfileCredentialsProperty(..),
        mkSlackConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html>
    SlackConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-accesstoken>
                                              accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-clientid>
                                              clientId :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-clientsecret>
                                              clientSecret :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-slackconnectorprofilecredentials.html#cfn-appflow-connectorprofile-slackconnectorprofilecredentials-connectoroauthrequest>
                                              connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlackConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SlackConnectorProfileCredentialsProperty
mkSlackConnectorProfileCredentialsProperty clientId clientSecret
  = SlackConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), clientId = clientId,
       clientSecret = clientSecret, accessToken = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing}
instance ToResourceProperties SlackConnectorProfileCredentialsProperty where
  toResourceProperties SlackConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SlackConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "ConnectorOAuthRequest"
                                 Prelude.<$> connectorOAuthRequest]))}
instance JSON.ToJSON SlackConnectorProfileCredentialsProperty where
  toJSON SlackConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "ConnectorOAuthRequest"
                    Prelude.<$> connectorOAuthRequest])))
instance Property "AccessToken" SlackConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ClientId" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {clientId = newValue, ..}
instance Property "ClientSecret" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ClientSecret" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {clientSecret = newValue, ..}
instance Property "ConnectorOAuthRequest" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" SlackConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}