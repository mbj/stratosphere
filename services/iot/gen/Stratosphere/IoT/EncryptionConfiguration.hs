module Stratosphere.IoT.EncryptionConfiguration (
        EncryptionConfiguration(..), mkEncryptionConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-encryptionconfiguration.html>
    EncryptionConfiguration {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-encryptionconfiguration.html#cfn-iot-encryptionconfiguration-encryptiontype>
                             encryptionType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-encryptionconfiguration.html#cfn-iot-encryptionconfiguration-kmsaccessrolearn>
                             kmsAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-encryptionconfiguration.html#cfn-iot-encryptionconfiguration-kmskeyarn>
                             kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfiguration ::
  Value Prelude.Text -> EncryptionConfiguration
mkEncryptionConfiguration encryptionType
  = EncryptionConfiguration
      {haddock_workaround_ = (), encryptionType = encryptionType,
       kmsAccessRoleArn = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties EncryptionConfiguration where
  toResourceProperties EncryptionConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IoT::EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionType" JSON..= encryptionType]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsAccessRoleArn" Prelude.<$> kmsAccessRoleArn,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON EncryptionConfiguration where
  toJSON EncryptionConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionType" JSON..= encryptionType]
              (Prelude.catMaybes
                 [(JSON..=) "KmsAccessRoleArn" Prelude.<$> kmsAccessRoleArn,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "EncryptionType" EncryptionConfiguration where
  type PropertyType "EncryptionType" EncryptionConfiguration = Value Prelude.Text
  set newValue EncryptionConfiguration {..}
    = EncryptionConfiguration {encryptionType = newValue, ..}
instance Property "KmsAccessRoleArn" EncryptionConfiguration where
  type PropertyType "KmsAccessRoleArn" EncryptionConfiguration = Value Prelude.Text
  set newValue EncryptionConfiguration {..}
    = EncryptionConfiguration
        {kmsAccessRoleArn = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" EncryptionConfiguration where
  type PropertyType "KmsKeyArn" EncryptionConfiguration = Value Prelude.Text
  set newValue EncryptionConfiguration {..}
    = EncryptionConfiguration {kmsKeyArn = Prelude.pure newValue, ..}