module Stratosphere.AppFlow.ConnectorProfile.OAuthPropertiesProperty (
        OAuthPropertiesProperty(..), mkOAuthPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuthPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthproperties.html>
    OAuthPropertiesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthproperties.html#cfn-appflow-connectorprofile-oauthproperties-authcodeurl>
                             authCodeUrl :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthproperties.html#cfn-appflow-connectorprofile-oauthproperties-oauthscopes>
                             oAuthScopes :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthproperties.html#cfn-appflow-connectorprofile-oauthproperties-tokenurl>
                             tokenUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthPropertiesProperty :: OAuthPropertiesProperty
mkOAuthPropertiesProperty
  = OAuthPropertiesProperty
      {haddock_workaround_ = (), authCodeUrl = Prelude.Nothing,
       oAuthScopes = Prelude.Nothing, tokenUrl = Prelude.Nothing}
instance ToResourceProperties OAuthPropertiesProperty where
  toResourceProperties OAuthPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.OAuthProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthCodeUrl" Prelude.<$> authCodeUrl,
                            (JSON..=) "OAuthScopes" Prelude.<$> oAuthScopes,
                            (JSON..=) "TokenUrl" Prelude.<$> tokenUrl])}
instance JSON.ToJSON OAuthPropertiesProperty where
  toJSON OAuthPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthCodeUrl" Prelude.<$> authCodeUrl,
               (JSON..=) "OAuthScopes" Prelude.<$> oAuthScopes,
               (JSON..=) "TokenUrl" Prelude.<$> tokenUrl]))
instance Property "AuthCodeUrl" OAuthPropertiesProperty where
  type PropertyType "AuthCodeUrl" OAuthPropertiesProperty = Value Prelude.Text
  set newValue OAuthPropertiesProperty {..}
    = OAuthPropertiesProperty {authCodeUrl = Prelude.pure newValue, ..}
instance Property "OAuthScopes" OAuthPropertiesProperty where
  type PropertyType "OAuthScopes" OAuthPropertiesProperty = ValueList Prelude.Text
  set newValue OAuthPropertiesProperty {..}
    = OAuthPropertiesProperty {oAuthScopes = Prelude.pure newValue, ..}
instance Property "TokenUrl" OAuthPropertiesProperty where
  type PropertyType "TokenUrl" OAuthPropertiesProperty = Value Prelude.Text
  set newValue OAuthPropertiesProperty {..}
    = OAuthPropertiesProperty {tokenUrl = Prelude.pure newValue, ..}