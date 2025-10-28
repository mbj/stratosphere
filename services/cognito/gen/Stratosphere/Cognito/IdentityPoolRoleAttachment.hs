module Stratosphere.Cognito.IdentityPoolRoleAttachment (
        module Exports, IdentityPoolRoleAttachment(..),
        mkIdentityPoolRoleAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPoolRoleAttachment.RoleMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityPoolRoleAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html>
    IdentityPoolRoleAttachment {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-identitypoolid>
                                identityPoolId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-rolemappings>
                                roleMappings :: (Prelude.Maybe (Prelude.Map Prelude.Text RoleMappingProperty)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-roles>
                                roles :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityPoolRoleAttachment ::
  Value Prelude.Text -> IdentityPoolRoleAttachment
mkIdentityPoolRoleAttachment identityPoolId
  = IdentityPoolRoleAttachment
      {haddock_workaround_ = (), identityPoolId = identityPoolId,
       roleMappings = Prelude.Nothing, roles = Prelude.Nothing}
instance ToResourceProperties IdentityPoolRoleAttachment where
  toResourceProperties IdentityPoolRoleAttachment {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolRoleAttachment",
         supportsTags = Prelude.False,
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
  type PropertyType "RoleMappings" IdentityPoolRoleAttachment = Prelude.Map Prelude.Text RoleMappingProperty
  set newValue IdentityPoolRoleAttachment {..}
    = IdentityPoolRoleAttachment
        {roleMappings = Prelude.pure newValue, ..}
instance Property "Roles" IdentityPoolRoleAttachment where
  type PropertyType "Roles" IdentityPoolRoleAttachment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IdentityPoolRoleAttachment {..}
    = IdentityPoolRoleAttachment {roles = Prelude.pure newValue, ..}