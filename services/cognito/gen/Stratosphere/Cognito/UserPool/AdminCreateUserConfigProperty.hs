module Stratosphere.Cognito.UserPool.AdminCreateUserConfigProperty (
        module Exports, AdminCreateUserConfigProperty(..),
        mkAdminCreateUserConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.InviteMessageTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdminCreateUserConfigProperty
  = AdminCreateUserConfigProperty {allowAdminCreateUserOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                   inviteMessageTemplate :: (Prelude.Maybe InviteMessageTemplateProperty),
                                   unusedAccountValidityDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdminCreateUserConfigProperty :: AdminCreateUserConfigProperty
mkAdminCreateUserConfigProperty
  = AdminCreateUserConfigProperty
      {allowAdminCreateUserOnly = Prelude.Nothing,
       inviteMessageTemplate = Prelude.Nothing,
       unusedAccountValidityDays = Prelude.Nothing}
instance ToResourceProperties AdminCreateUserConfigProperty where
  toResourceProperties AdminCreateUserConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.AdminCreateUserConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowAdminCreateUserOnly"
                              Prelude.<$> allowAdminCreateUserOnly,
                            (JSON..=) "InviteMessageTemplate"
                              Prelude.<$> inviteMessageTemplate,
                            (JSON..=) "UnusedAccountValidityDays"
                              Prelude.<$> unusedAccountValidityDays])}
instance JSON.ToJSON AdminCreateUserConfigProperty where
  toJSON AdminCreateUserConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowAdminCreateUserOnly"
                 Prelude.<$> allowAdminCreateUserOnly,
               (JSON..=) "InviteMessageTemplate"
                 Prelude.<$> inviteMessageTemplate,
               (JSON..=) "UnusedAccountValidityDays"
                 Prelude.<$> unusedAccountValidityDays]))
instance Property "AllowAdminCreateUserOnly" AdminCreateUserConfigProperty where
  type PropertyType "AllowAdminCreateUserOnly" AdminCreateUserConfigProperty = Value Prelude.Bool
  set newValue AdminCreateUserConfigProperty {..}
    = AdminCreateUserConfigProperty
        {allowAdminCreateUserOnly = Prelude.pure newValue, ..}
instance Property "InviteMessageTemplate" AdminCreateUserConfigProperty where
  type PropertyType "InviteMessageTemplate" AdminCreateUserConfigProperty = InviteMessageTemplateProperty
  set newValue AdminCreateUserConfigProperty {..}
    = AdminCreateUserConfigProperty
        {inviteMessageTemplate = Prelude.pure newValue, ..}
instance Property "UnusedAccountValidityDays" AdminCreateUserConfigProperty where
  type PropertyType "UnusedAccountValidityDays" AdminCreateUserConfigProperty = Value Prelude.Integer
  set newValue AdminCreateUserConfigProperty {..}
    = AdminCreateUserConfigProperty
        {unusedAccountValidityDays = Prelude.pure newValue, ..}