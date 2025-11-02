module Stratosphere.SecretsManager.SecretTargetAttachment (
        SecretTargetAttachment(..), mkSecretTargetAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretTargetAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html>
    SecretTargetAttachment {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-secretid>
                            secretId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targetid>
                            targetId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targettype>
                            targetType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretTargetAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SecretTargetAttachment
mkSecretTargetAttachment secretId targetId targetType
  = SecretTargetAttachment
      {haddock_workaround_ = (), secretId = secretId,
       targetId = targetId, targetType = targetType}
instance ToResourceProperties SecretTargetAttachment where
  toResourceProperties SecretTargetAttachment {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::SecretTargetAttachment",
         supportsTags = Prelude.False,
         properties = ["SecretId" JSON..= secretId,
                       "TargetId" JSON..= targetId, "TargetType" JSON..= targetType]}
instance JSON.ToJSON SecretTargetAttachment where
  toJSON SecretTargetAttachment {..}
    = JSON.object
        ["SecretId" JSON..= secretId, "TargetId" JSON..= targetId,
         "TargetType" JSON..= targetType]
instance Property "SecretId" SecretTargetAttachment where
  type PropertyType "SecretId" SecretTargetAttachment = Value Prelude.Text
  set newValue SecretTargetAttachment {..}
    = SecretTargetAttachment {secretId = newValue, ..}
instance Property "TargetId" SecretTargetAttachment where
  type PropertyType "TargetId" SecretTargetAttachment = Value Prelude.Text
  set newValue SecretTargetAttachment {..}
    = SecretTargetAttachment {targetId = newValue, ..}
instance Property "TargetType" SecretTargetAttachment where
  type PropertyType "TargetType" SecretTargetAttachment = Value Prelude.Text
  set newValue SecretTargetAttachment {..}
    = SecretTargetAttachment {targetType = newValue, ..}