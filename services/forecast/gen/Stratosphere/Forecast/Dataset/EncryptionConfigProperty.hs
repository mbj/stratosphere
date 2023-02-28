module Stratosphere.Forecast.Dataset.EncryptionConfigProperty (
        EncryptionConfigProperty(..), mkEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigProperty
  = EncryptionConfigProperty {kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                              roleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkEncryptionConfigProperty :: EncryptionConfigProperty
mkEncryptionConfigProperty
  = EncryptionConfigProperty
      {kmsKeyArn = Prelude.Nothing, roleArn = Prelude.Nothing}
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