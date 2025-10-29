module Stratosphere.Signer.ProfilePermission (
        ProfilePermission(..), mkProfilePermission
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProfilePermission
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html>
    ProfilePermission {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html#cfn-signer-profilepermission-action>
                       action :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html#cfn-signer-profilepermission-principal>
                       principal :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html#cfn-signer-profilepermission-profilename>
                       profileName :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html#cfn-signer-profilepermission-profileversion>
                       profileVersion :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-signer-profilepermission.html#cfn-signer-profilepermission-statementid>
                       statementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfilePermission ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ProfilePermission
mkProfilePermission action principal profileName statementId
  = ProfilePermission
      {action = action, principal = principal, profileName = profileName,
       statementId = statementId, profileVersion = Prelude.Nothing}
instance ToResourceProperties ProfilePermission where
  toResourceProperties ProfilePermission {..}
    = ResourceProperties
        {awsType = "AWS::Signer::ProfilePermission",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Principal" JSON..= principal,
                            "ProfileName" JSON..= profileName,
                            "StatementId" JSON..= statementId]
                           (Prelude.catMaybes
                              [(JSON..=) "ProfileVersion" Prelude.<$> profileVersion]))}
instance JSON.ToJSON ProfilePermission where
  toJSON ProfilePermission {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Principal" JSON..= principal,
               "ProfileName" JSON..= profileName,
               "StatementId" JSON..= statementId]
              (Prelude.catMaybes
                 [(JSON..=) "ProfileVersion" Prelude.<$> profileVersion])))
instance Property "Action" ProfilePermission where
  type PropertyType "Action" ProfilePermission = Value Prelude.Text
  set newValue ProfilePermission {..}
    = ProfilePermission {action = newValue, ..}
instance Property "Principal" ProfilePermission where
  type PropertyType "Principal" ProfilePermission = Value Prelude.Text
  set newValue ProfilePermission {..}
    = ProfilePermission {principal = newValue, ..}
instance Property "ProfileName" ProfilePermission where
  type PropertyType "ProfileName" ProfilePermission = Value Prelude.Text
  set newValue ProfilePermission {..}
    = ProfilePermission {profileName = newValue, ..}
instance Property "ProfileVersion" ProfilePermission where
  type PropertyType "ProfileVersion" ProfilePermission = Value Prelude.Text
  set newValue ProfilePermission {..}
    = ProfilePermission {profileVersion = Prelude.pure newValue, ..}
instance Property "StatementId" ProfilePermission where
  type PropertyType "StatementId" ProfilePermission = Value Prelude.Text
  set newValue ProfilePermission {..}
    = ProfilePermission {statementId = newValue, ..}