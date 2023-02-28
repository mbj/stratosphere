module Stratosphere.IoT.RoleAlias (
        RoleAlias(..), mkRoleAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RoleAlias
  = RoleAlias {credentialDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
               roleAlias :: (Prelude.Maybe (Value Prelude.Text)),
               roleArn :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkRoleAlias :: Value Prelude.Text -> RoleAlias
mkRoleAlias roleArn
  = RoleAlias
      {roleArn = roleArn, credentialDurationSeconds = Prelude.Nothing,
       roleAlias = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RoleAlias where
  toResourceProperties RoleAlias {..}
    = ResourceProperties
        {awsType = "AWS::IoT::RoleAlias", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CredentialDurationSeconds"
                                 Prelude.<$> credentialDurationSeconds,
                               (JSON..=) "RoleAlias" Prelude.<$> roleAlias,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RoleAlias where
  toJSON RoleAlias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "CredentialDurationSeconds"
                    Prelude.<$> credentialDurationSeconds,
                  (JSON..=) "RoleAlias" Prelude.<$> roleAlias,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CredentialDurationSeconds" RoleAlias where
  type PropertyType "CredentialDurationSeconds" RoleAlias = Value Prelude.Integer
  set newValue RoleAlias {..}
    = RoleAlias {credentialDurationSeconds = Prelude.pure newValue, ..}
instance Property "RoleAlias" RoleAlias where
  type PropertyType "RoleAlias" RoleAlias = Value Prelude.Text
  set newValue RoleAlias {..}
    = RoleAlias {roleAlias = Prelude.pure newValue, ..}
instance Property "RoleArn" RoleAlias where
  type PropertyType "RoleArn" RoleAlias = Value Prelude.Text
  set newValue RoleAlias {..} = RoleAlias {roleArn = newValue, ..}
instance Property "Tags" RoleAlias where
  type PropertyType "Tags" RoleAlias = [Tag]
  set newValue RoleAlias {..}
    = RoleAlias {tags = Prelude.pure newValue, ..}