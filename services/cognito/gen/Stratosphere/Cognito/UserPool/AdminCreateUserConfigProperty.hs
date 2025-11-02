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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html>
    AdminCreateUserConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly>
                                   allowAdminCreateUserOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate>
                                   inviteMessageTemplate :: (Prelude.Maybe InviteMessageTemplateProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays>
                                   unusedAccountValidityDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdminCreateUserConfigProperty :: AdminCreateUserConfigProperty
mkAdminCreateUserConfigProperty
  = AdminCreateUserConfigProperty
      {haddock_workaround_ = (),
       allowAdminCreateUserOnly = Prelude.Nothing,
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