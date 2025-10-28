module Stratosphere.Amplify.Branch.BasicAuthConfigProperty (
        BasicAuthConfigProperty(..), mkBasicAuthConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html>
    BasicAuthConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-enablebasicauth>
                             enableBasicAuth :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-password>
                             password :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-username>
                             username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> BasicAuthConfigProperty
mkBasicAuthConfigProperty password username
  = BasicAuthConfigProperty
      {haddock_workaround_ = (), password = password,
       username = username, enableBasicAuth = Prelude.Nothing}
instance ToResourceProperties BasicAuthConfigProperty where
  toResourceProperties BasicAuthConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Branch.BasicAuthConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Password" JSON..= password, "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth]))}
instance JSON.ToJSON BasicAuthConfigProperty where
  toJSON BasicAuthConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Password" JSON..= password, "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "EnableBasicAuth" Prelude.<$> enableBasicAuth])))
instance Property "EnableBasicAuth" BasicAuthConfigProperty where
  type PropertyType "EnableBasicAuth" BasicAuthConfigProperty = Value Prelude.Bool
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty
        {enableBasicAuth = Prelude.pure newValue, ..}
instance Property "Password" BasicAuthConfigProperty where
  type PropertyType "Password" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {password = newValue, ..}
instance Property "Username" BasicAuthConfigProperty where
  type PropertyType "Username" BasicAuthConfigProperty = Value Prelude.Text
  set newValue BasicAuthConfigProperty {..}
    = BasicAuthConfigProperty {username = newValue, ..}