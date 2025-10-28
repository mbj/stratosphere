module Stratosphere.Amplify.App.BasicAuthConfigProperty (
        BasicAuthConfigProperty(..), mkBasicAuthConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html>
    BasicAuthConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-enablebasicauth>
                             enableBasicAuth :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-password>
                             password :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-username>
                             username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthConfigProperty :: BasicAuthConfigProperty
mkBasicAuthConfigProperty
  = BasicAuthConfigProperty
      {haddock_workaround_ = (), enableBasicAuth = Prelude.Nothing,
       password = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties BasicAuthConfigProperty where
  toResourceProperties BasicAuthConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.BasicAuthConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON BasicAuthConfigProperty where
  toJSON BasicAuthConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "EnableBasicAuth" BasicAuthConfigProperty where
  type PropertyType "EnableBasicAuth" BasicAuthConfigProperty = Value Prelude.Bool
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty
        {enableBasicAuth = Prelude.pure newValue, ..}
instance Property "Password" BasicAuthConfigProperty where
  type PropertyType "Password" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {password = Prelude.pure newValue, ..}
instance Property "Username" BasicAuthConfigProperty where
  type PropertyType "Username" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {username = Prelude.pure newValue, ..}