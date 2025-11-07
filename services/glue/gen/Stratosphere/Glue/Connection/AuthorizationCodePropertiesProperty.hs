module Stratosphere.Glue.Connection.AuthorizationCodePropertiesProperty (
        AuthorizationCodePropertiesProperty(..),
        mkAuthorizationCodePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationCodePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authorizationcodeproperties.html>
    AuthorizationCodePropertiesProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authorizationcodeproperties.html#cfn-glue-connection-authorizationcodeproperties-authorizationcode>
                                         authorizationCode :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authorizationcodeproperties.html#cfn-glue-connection-authorizationcodeproperties-redirecturi>
                                         redirectUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizationCodePropertiesProperty ::
  AuthorizationCodePropertiesProperty
mkAuthorizationCodePropertiesProperty
  = AuthorizationCodePropertiesProperty
      {haddock_workaround_ = (), authorizationCode = Prelude.Nothing,
       redirectUri = Prelude.Nothing}
instance ToResourceProperties AuthorizationCodePropertiesProperty where
  toResourceProperties AuthorizationCodePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.AuthorizationCodeProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizationCode" Prelude.<$> authorizationCode,
                            (JSON..=) "RedirectUri" Prelude.<$> redirectUri])}
instance JSON.ToJSON AuthorizationCodePropertiesProperty where
  toJSON AuthorizationCodePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizationCode" Prelude.<$> authorizationCode,
               (JSON..=) "RedirectUri" Prelude.<$> redirectUri]))
instance Property "AuthorizationCode" AuthorizationCodePropertiesProperty where
  type PropertyType "AuthorizationCode" AuthorizationCodePropertiesProperty = Value Prelude.Text
  set newValue AuthorizationCodePropertiesProperty {..}
    = AuthorizationCodePropertiesProperty
        {authorizationCode = Prelude.pure newValue, ..}
instance Property "RedirectUri" AuthorizationCodePropertiesProperty where
  type PropertyType "RedirectUri" AuthorizationCodePropertiesProperty = Value Prelude.Text
  set newValue AuthorizationCodePropertiesProperty {..}
    = AuthorizationCodePropertiesProperty
        {redirectUri = Prelude.pure newValue, ..}