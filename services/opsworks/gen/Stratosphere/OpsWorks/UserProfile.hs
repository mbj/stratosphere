module Stratosphere.OpsWorks.UserProfile (
        UserProfile(..), mkUserProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProfile
  = UserProfile {allowSelfManagement :: (Prelude.Maybe (Value Prelude.Bool)),
                 iamUserArn :: (Value Prelude.Text),
                 sshPublicKey :: (Prelude.Maybe (Value Prelude.Text)),
                 sshUsername :: (Prelude.Maybe (Value Prelude.Text))}
mkUserProfile :: Value Prelude.Text -> UserProfile
mkUserProfile iamUserArn
  = UserProfile
      {iamUserArn = iamUserArn, allowSelfManagement = Prelude.Nothing,
       sshPublicKey = Prelude.Nothing, sshUsername = Prelude.Nothing}
instance ToResourceProperties UserProfile where
  toResourceProperties UserProfile {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::UserProfile",
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