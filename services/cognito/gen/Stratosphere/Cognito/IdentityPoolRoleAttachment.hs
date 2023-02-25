module Stratosphere.Cognito.IdentityPoolRoleAttachment (
        IdentityPoolRoleAttachment(..), mkIdentityPoolRoleAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityPoolRoleAttachment
  = IdentityPoolRoleAttachment {identityPoolId :: (Value Prelude.Text),
                                roleMappings :: (Prelude.Maybe JSON.Object),
                                roles :: (Prelude.Maybe JSON.Object)}
mkIdentityPoolRoleAttachment ::
  Value Prelude.Text -> IdentityPoolRoleAttachment
mkIdentityPoolRoleAttachment identityPoolId
  = IdentityPoolRoleAttachment
      {identityPoolId = identityPoolId, roleMappings = Prelude.Nothing,
       roles = Prelude.Nothing}
instance ToResourceProperties IdentityPoolRoleAttachment where
  toResourceProperties IdentityPoolRoleAttachment {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolRoleAttachment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdentityPoolId" JSON..= identityPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "RoleMappings" Prelude.<$> roleMappings,
                               (JSON..=) "Roles" Prelude.<$> roles]))}
instance JSON.ToJSON IdentityPoolRoleAttachment where
  toJSON IdentityPoolRoleAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdentityPoolId" JSON..= identityPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "RoleMappings" Prelude.<$> roleMappings,
                  (JSON..=) "Roles" Prelude.<$> roles])))
instance Property "IdentityPoolId" IdentityPoolRoleAttachment where
  type PropertyType "IdentityPoolId" IdentityPoolRoleAttachment = Value Prelude.Text
  set newValue IdentityPoolRoleAttachment {..}
    = IdentityPoolRoleAttachment {identityPoolId = newValue, ..}
instance Property "RoleMappings" IdentityPoolRoleAttachment where
  type PropertyType "RoleMappings" IdentityPoolRoleAttachment = JSON.Object
  set newValue IdentityPoolRoleAttachment {..}
    = IdentityPoolRoleAttachment
        {roleMappings = Prelude.pure newValue, ..}
instance Property "Roles" IdentityPoolRoleAttachment where
  type PropertyType "Roles" IdentityPoolRoleAttachment = JSON.Object
  set newValue IdentityPoolRoleAttachment {..}
    = IdentityPoolRoleAttachment {roles = Prelude.pure newValue, ..}