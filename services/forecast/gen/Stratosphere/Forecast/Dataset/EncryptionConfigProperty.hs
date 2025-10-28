module Stratosphere.Forecast.Dataset.EncryptionConfigProperty (
        EncryptionConfigProperty(..), mkEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-encryptionconfig.html>
    EncryptionConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-encryptionconfig.html#cfn-forecast-dataset-encryptionconfig-kmskeyarn>
                              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-encryptionconfig.html#cfn-forecast-dataset-encryptionconfig-rolearn>
                              roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigProperty :: EncryptionConfigProperty
mkEncryptionConfigProperty
  = EncryptionConfigProperty
      {haddock_workaround_ = (), kmsKeyArn = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigProperty where
  toResourceProperties EncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset.EncryptionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON EncryptionConfigProperty where
  toJSON EncryptionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "KmsKeyArn" EncryptionConfigProperty where
  type PropertyType "KmsKeyArn" EncryptionConfigProperty = Value Prelude.Text
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "RoleArn" EncryptionConfigProperty where
  type PropertyType "RoleArn" EncryptionConfigProperty = Value Prelude.Text
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {roleArn = Prelude.pure newValue, ..}