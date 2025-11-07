module Stratosphere.DataSync.LocationAzureBlob.CustomSecretConfigProperty (
        CustomSecretConfigProperty(..), mkCustomSecretConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomSecretConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationazureblob-customsecretconfig.html>
    CustomSecretConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationazureblob-customsecretconfig.html#cfn-datasync-locationazureblob-customsecretconfig-secretaccessrolearn>
                                secretAccessRoleArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationazureblob-customsecretconfig.html#cfn-datasync-locationazureblob-customsecretconfig-secretarn>
                                secretArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomSecretConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomSecretConfigProperty
mkCustomSecretConfigProperty secretAccessRoleArn secretArn
  = CustomSecretConfigProperty
      {haddock_workaround_ = (),
       secretAccessRoleArn = secretAccessRoleArn, secretArn = secretArn}
instance ToResourceProperties CustomSecretConfigProperty where
  toResourceProperties CustomSecretConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationAzureBlob.CustomSecretConfig",
         supportsTags = Prelude.False,
         properties = ["SecretAccessRoleArn" JSON..= secretAccessRoleArn,
                       "SecretArn" JSON..= secretArn]}
instance JSON.ToJSON CustomSecretConfigProperty where
  toJSON CustomSecretConfigProperty {..}
    = JSON.object
        ["SecretAccessRoleArn" JSON..= secretAccessRoleArn,
         "SecretArn" JSON..= secretArn]
instance Property "SecretAccessRoleArn" CustomSecretConfigProperty where
  type PropertyType "SecretAccessRoleArn" CustomSecretConfigProperty = Value Prelude.Text
  set newValue CustomSecretConfigProperty {..}
    = CustomSecretConfigProperty {secretAccessRoleArn = newValue, ..}
instance Property "SecretArn" CustomSecretConfigProperty where
  type PropertyType "SecretArn" CustomSecretConfigProperty = Value Prelude.Text
  set newValue CustomSecretConfigProperty {..}
    = CustomSecretConfigProperty {secretArn = newValue, ..}