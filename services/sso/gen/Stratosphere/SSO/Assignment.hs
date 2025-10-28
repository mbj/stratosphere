module Stratosphere.SSO.Assignment (
        Assignment(..), mkAssignment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Assignment
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html>
    Assignment {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-instancearn>
                instanceArn :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-permissionsetarn>
                permissionSetArn :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-principalid>
                principalId :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-principaltype>
                principalType :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-targetid>
                targetId :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-targettype>
                targetType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssignment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Text -> Assignment
mkAssignment
  instanceArn
  permissionSetArn
  principalId
  principalType
  targetId
  targetType
  = Assignment
      {instanceArn = instanceArn, permissionSetArn = permissionSetArn,
       principalId = principalId, principalType = principalType,
       targetId = targetId, targetType = targetType}
instance ToResourceProperties Assignment where
  toResourceProperties Assignment {..}
    = ResourceProperties
        {awsType = "AWS::SSO::Assignment", supportsTags = Prelude.False,
         properties = ["InstanceArn" JSON..= instanceArn,
                       "PermissionSetArn" JSON..= permissionSetArn,
                       "PrincipalId" JSON..= principalId,
                       "PrincipalType" JSON..= principalType, "TargetId" JSON..= targetId,
                       "TargetType" JSON..= targetType]}
instance JSON.ToJSON Assignment where
  toJSON Assignment {..}
    = JSON.object
        ["InstanceArn" JSON..= instanceArn,
         "PermissionSetArn" JSON..= permissionSetArn,
         "PrincipalId" JSON..= principalId,
         "PrincipalType" JSON..= principalType, "TargetId" JSON..= targetId,
         "TargetType" JSON..= targetType]
instance Property "InstanceArn" Assignment where
  type PropertyType "InstanceArn" Assignment = Value Prelude.Text
  set newValue Assignment {..}
    = Assignment {instanceArn = newValue, ..}
instance Property "PermissionSetArn" Assignment where
  type PropertyType "PermissionSetArn" Assignment = Value Prelude.Text
  set newValue Assignment {..}
    = Assignment {permissionSetArn = newValue, ..}
instance Property "PrincipalId" Assignment where
  type PropertyType "PrincipalId" Assignment = Value Prelude.Text
  set newValue Assignment {..}
    = Assignment {principalId = newValue, ..}
instance Property "PrincipalType" Assignment where
  type PropertyType "PrincipalType" Assignment = Value Prelude.Text
  set newValue Assignment {..}
    = Assignment {principalType = newValue, ..}
instance Property "TargetId" Assignment where
  type PropertyType "TargetId" Assignment = Value Prelude.Text
  set newValue Assignment {..} = Assignment {targetId = newValue, ..}
instance Property "TargetType" Assignment where
  type PropertyType "TargetType" Assignment = Value Prelude.Text
  set newValue Assignment {..}
    = Assignment {targetType = newValue, ..}