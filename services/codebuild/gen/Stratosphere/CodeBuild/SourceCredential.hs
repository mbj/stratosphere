module Stratosphere.CodeBuild.SourceCredential (
        SourceCredential(..), mkSourceCredential
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceCredential
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html>
    SourceCredential {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-authtype>
                      authType :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-servertype>
                      serverType :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-token>
                      token :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-username>
                      username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceCredential ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SourceCredential
mkSourceCredential authType serverType token
  = SourceCredential
      {haddock_workaround_ = (), authType = authType,
       serverType = serverType, token = token, username = Prelude.Nothing}
instance ToResourceProperties SourceCredential where
  toResourceProperties SourceCredential {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::SourceCredential",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthType" JSON..= authType, "ServerType" JSON..= serverType,
                            "Token" JSON..= token]
                           (Prelude.catMaybes [(JSON..=) "Username" Prelude.<$> username]))}
instance JSON.ToJSON SourceCredential where
  toJSON SourceCredential {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthType" JSON..= authType, "ServerType" JSON..= serverType,
               "Token" JSON..= token]
              (Prelude.catMaybes [(JSON..=) "Username" Prelude.<$> username])))
instance Property "AuthType" SourceCredential where
  type PropertyType "AuthType" SourceCredential = Value Prelude.Text
  set newValue SourceCredential {..}
    = SourceCredential {authType = newValue, ..}
instance Property "ServerType" SourceCredential where
  type PropertyType "ServerType" SourceCredential = Value Prelude.Text
  set newValue SourceCredential {..}
    = SourceCredential {serverType = newValue, ..}
instance Property "Token" SourceCredential where
  type PropertyType "Token" SourceCredential = Value Prelude.Text
  set newValue SourceCredential {..}
    = SourceCredential {token = newValue, ..}
instance Property "Username" SourceCredential where
  type PropertyType "Username" SourceCredential = Value Prelude.Text
  set newValue SourceCredential {..}
    = SourceCredential {username = Prelude.pure newValue, ..}