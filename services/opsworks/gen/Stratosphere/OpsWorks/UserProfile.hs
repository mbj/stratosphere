module Stratosphere.OpsWorks.UserProfile (
        UserProfile(..), mkUserProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html>
    UserProfile {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-allowselfmanagement>
                 allowSelfManagement :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-iamuserarn>
                 iamUserArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshpublickey>
                 sshPublicKey :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshusername>
                 sshUsername :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProfile :: Value Prelude.Text -> UserProfile
mkUserProfile iamUserArn
  = UserProfile
      {haddock_workaround_ = (), iamUserArn = iamUserArn,
       allowSelfManagement = Prelude.Nothing,
       sshPublicKey = Prelude.Nothing, sshUsername = Prelude.Nothing}
instance ToResourceProperties UserProfile where
  toResourceProperties UserProfile {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::UserProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IamUserArn" JSON..= iamUserArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowSelfManagement" Prelude.<$> allowSelfManagement,
                               (JSON..=) "SshPublicKey" Prelude.<$> sshPublicKey,
                               (JSON..=) "SshUsername" Prelude.<$> sshUsername]))}
instance JSON.ToJSON UserProfile where
  toJSON UserProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IamUserArn" JSON..= iamUserArn]
              (Prelude.catMaybes
                 [(JSON..=) "AllowSelfManagement" Prelude.<$> allowSelfManagement,
                  (JSON..=) "SshPublicKey" Prelude.<$> sshPublicKey,
                  (JSON..=) "SshUsername" Prelude.<$> sshUsername])))
instance Property "AllowSelfManagement" UserProfile where
  type PropertyType "AllowSelfManagement" UserProfile = Value Prelude.Bool
  set newValue UserProfile {..}
    = UserProfile {allowSelfManagement = Prelude.pure newValue, ..}
instance Property "IamUserArn" UserProfile where
  type PropertyType "IamUserArn" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {iamUserArn = newValue, ..}
instance Property "SshPublicKey" UserProfile where
  type PropertyType "SshPublicKey" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {sshPublicKey = Prelude.pure newValue, ..}
instance Property "SshUsername" UserProfile where
  type PropertyType "SshUsername" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {sshUsername = Prelude.pure newValue, ..}