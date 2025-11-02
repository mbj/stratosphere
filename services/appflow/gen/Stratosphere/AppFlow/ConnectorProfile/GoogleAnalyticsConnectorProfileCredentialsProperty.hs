module Stratosphere.AppFlow.ConnectorProfile.GoogleAnalyticsConnectorProfileCredentialsProperty (
        module Exports,
        GoogleAnalyticsConnectorProfileCredentialsProperty(..),
        mkGoogleAnalyticsConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GoogleAnalyticsConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html>
    GoogleAnalyticsConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-accesstoken>
                                                        accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-clientid>
                                                        clientId :: (Value Prelude.Text),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-clientsecret>
                                                        clientSecret :: (Value Prelude.Text),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-connectoroauthrequest>
                                                        connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials.html#cfn-appflow-connectorprofile-googleanalyticsconnectorprofilecredentials-refreshtoken>
                                                        refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGoogleAnalyticsConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> GoogleAnalyticsConnectorProfileCredentialsProperty
mkGoogleAnalyticsConnectorProfileCredentialsProperty
  clientId
  clientSecret
  = GoogleAnalyticsConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), clientId = clientId,
       clientSecret = clientSecret, accessToken = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties GoogleAnalyticsConnectorProfileCredentialsProperty where
  toResourceProperties
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.GoogleAnalyticsConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "ConnectorOAuthRequest"
                                 Prelude.<$> connectorOAuthRequest,
                               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))}
instance JSON.ToJSON GoogleAnalyticsConnectorProfileCredentialsProperty where
  toJSON GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "ConnectorOAuthRequest"
                    Prelude.<$> connectorOAuthRequest,
                  (JSON..=) "RefreshToken" Prelude.<$> refreshToken])))
instance Property "AccessToken" GoogleAnalyticsConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" GoogleAnalyticsConnectorProfileCredentialsProperty = Value Prelude.Text
  set
    newValue
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = GoogleAnalyticsConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" GoogleAnalyticsConnectorProfileCredentialsProperty where
  type PropertyType "ClientId" GoogleAnalyticsConnectorProfileCredentialsProperty = Value Prelude.Text
  set
    newValue
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = GoogleAnalyticsConnectorProfileCredentialsProperty
        {clientId = newValue, ..}
instance Property "ClientSecret" GoogleAnalyticsConnectorProfileCredentialsProperty where
  type PropertyType "ClientSecret" GoogleAnalyticsConnectorProfileCredentialsProperty = Value Prelude.Text
  set
    newValue
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = GoogleAnalyticsConnectorProfileCredentialsProperty
        {clientSecret = newValue, ..}
instance Property "ConnectorOAuthRequest" GoogleAnalyticsConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" GoogleAnalyticsConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set
    newValue
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = GoogleAnalyticsConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}
instance Property "RefreshToken" GoogleAnalyticsConnectorProfileCredentialsProperty where
  type PropertyType "RefreshToken" GoogleAnalyticsConnectorProfileCredentialsProperty = Value Prelude.Text
  set
    newValue
    GoogleAnalyticsConnectorProfileCredentialsProperty {..}
    = GoogleAnalyticsConnectorProfileCredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}