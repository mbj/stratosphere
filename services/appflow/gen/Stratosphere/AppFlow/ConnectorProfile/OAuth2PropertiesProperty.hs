module Stratosphere.AppFlow.ConnectorProfile.OAuth2PropertiesProperty (
        OAuth2PropertiesProperty(..), mkOAuth2PropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2PropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauth2properties.html>
    OAuth2PropertiesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauth2properties.html#cfn-appflow-connectorprofile-oauth2properties-oauth2granttype>
                              oAuth2GrantType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauth2properties.html#cfn-appflow-connectorprofile-oauth2properties-tokenurl>
                              tokenUrl :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauth2properties.html#cfn-appflow-connectorprofile-oauth2properties-tokenurlcustomproperties>
                              tokenUrlCustomProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2PropertiesProperty :: OAuth2PropertiesProperty
mkOAuth2PropertiesProperty
  = OAuth2PropertiesProperty
      {haddock_workaround_ = (), oAuth2GrantType = Prelude.Nothing,
       tokenUrl = Prelude.Nothing,
       tokenUrlCustomProperties = Prelude.Nothing}
instance ToResourceProperties OAuth2PropertiesProperty where
  toResourceProperties OAuth2PropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.OAuth2Properties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OAuth2GrantType" Prelude.<$> oAuth2GrantType,
                            (JSON..=) "TokenUrl" Prelude.<$> tokenUrl,
                            (JSON..=) "TokenUrlCustomProperties"
                              Prelude.<$> tokenUrlCustomProperties])}
instance JSON.ToJSON OAuth2PropertiesProperty where
  toJSON OAuth2PropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OAuth2GrantType" Prelude.<$> oAuth2GrantType,
               (JSON..=) "TokenUrl" Prelude.<$> tokenUrl,
               (JSON..=) "TokenUrlCustomProperties"
                 Prelude.<$> tokenUrlCustomProperties]))
instance Property "OAuth2GrantType" OAuth2PropertiesProperty where
  type PropertyType "OAuth2GrantType" OAuth2PropertiesProperty = Value Prelude.Text
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {oAuth2GrantType = Prelude.pure newValue, ..}
instance Property "TokenUrl" OAuth2PropertiesProperty where
  type PropertyType "TokenUrl" OAuth2PropertiesProperty = Value Prelude.Text
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty {tokenUrl = Prelude.pure newValue, ..}
instance Property "TokenUrlCustomProperties" OAuth2PropertiesProperty where
  type PropertyType "TokenUrlCustomProperties" OAuth2PropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {tokenUrlCustomProperties = Prelude.pure newValue, ..}