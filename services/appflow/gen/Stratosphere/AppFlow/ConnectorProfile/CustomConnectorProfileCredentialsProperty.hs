module Stratosphere.AppFlow.ConnectorProfile.CustomConnectorProfileCredentialsProperty (
        module Exports, CustomConnectorProfileCredentialsProperty(..),
        mkCustomConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ApiKeyCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.BasicAuthCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.CustomAuthCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.OAuth2CredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html>
    CustomConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html#cfn-appflow-connectorprofile-customconnectorprofilecredentials-apikey>
                                               apiKey :: (Prelude.Maybe ApiKeyCredentialsProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html#cfn-appflow-connectorprofile-customconnectorprofilecredentials-authenticationtype>
                                               authenticationType :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html#cfn-appflow-connectorprofile-customconnectorprofilecredentials-basic>
                                               basic :: (Prelude.Maybe BasicAuthCredentialsProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html#cfn-appflow-connectorprofile-customconnectorprofilecredentials-custom>
                                               custom :: (Prelude.Maybe CustomAuthCredentialsProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-customconnectorprofilecredentials.html#cfn-appflow-connectorprofile-customconnectorprofilecredentials-oauth2>
                                               oauth2 :: (Prelude.Maybe OAuth2CredentialsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomConnectorProfileCredentialsProperty ::
  Value Prelude.Text -> CustomConnectorProfileCredentialsProperty
mkCustomConnectorProfileCredentialsProperty authenticationType
  = CustomConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), authenticationType = authenticationType,
       apiKey = Prelude.Nothing, basic = Prelude.Nothing,
       custom = Prelude.Nothing, oauth2 = Prelude.Nothing}
instance ToResourceProperties CustomConnectorProfileCredentialsProperty where
  toResourceProperties CustomConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.CustomConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiKey" Prelude.<$> apiKey,
                               (JSON..=) "Basic" Prelude.<$> basic,
                               (JSON..=) "Custom" Prelude.<$> custom,
                               (JSON..=) "Oauth2" Prelude.<$> oauth2]))}
instance JSON.ToJSON CustomConnectorProfileCredentialsProperty where
  toJSON CustomConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "ApiKey" Prelude.<$> apiKey,
                  (JSON..=) "Basic" Prelude.<$> basic,
                  (JSON..=) "Custom" Prelude.<$> custom,
                  (JSON..=) "Oauth2" Prelude.<$> oauth2])))
instance Property "ApiKey" CustomConnectorProfileCredentialsProperty where
  type PropertyType "ApiKey" CustomConnectorProfileCredentialsProperty = ApiKeyCredentialsProperty
  set newValue CustomConnectorProfileCredentialsProperty {..}
    = CustomConnectorProfileCredentialsProperty
        {apiKey = Prelude.pure newValue, ..}
instance Property "AuthenticationType" CustomConnectorProfileCredentialsProperty where
  type PropertyType "AuthenticationType" CustomConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue CustomConnectorProfileCredentialsProperty {..}
    = CustomConnectorProfileCredentialsProperty
        {authenticationType = newValue, ..}
instance Property "Basic" CustomConnectorProfileCredentialsProperty where
  type PropertyType "Basic" CustomConnectorProfileCredentialsProperty = BasicAuthCredentialsProperty
  set newValue CustomConnectorProfileCredentialsProperty {..}
    = CustomConnectorProfileCredentialsProperty
        {basic = Prelude.pure newValue, ..}
instance Property "Custom" CustomConnectorProfileCredentialsProperty where
  type PropertyType "Custom" CustomConnectorProfileCredentialsProperty = CustomAuthCredentialsProperty
  set newValue CustomConnectorProfileCredentialsProperty {..}
    = CustomConnectorProfileCredentialsProperty
        {custom = Prelude.pure newValue, ..}
instance Property "Oauth2" CustomConnectorProfileCredentialsProperty where
  type PropertyType "Oauth2" CustomConnectorProfileCredentialsProperty = OAuth2CredentialsProperty
  set newValue CustomConnectorProfileCredentialsProperty {..}
    = CustomConnectorProfileCredentialsProperty
        {oauth2 = Prelude.pure newValue, ..}