module Stratosphere.AIOps.InvestigationGroup.EncryptionConfigMapProperty (
        EncryptionConfigMapProperty(..), mkEncryptionConfigMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-encryptionconfigmap.html>
    EncryptionConfigMapProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-encryptionconfigmap.html#cfn-aiops-investigationgroup-encryptionconfigmap-encryptionconfigurationtype>
                                 encryptionConfigurationType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aiops-investigationgroup-encryptionconfigmap.html#cfn-aiops-investigationgroup-encryptionconfigmap-kmskeyid>
                                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigMapProperty :: EncryptionConfigMapProperty
mkEncryptionConfigMapProperty
  = EncryptionConfigMapProperty
      {haddock_workaround_ = (),
       encryptionConfigurationType = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigMapProperty where
  toResourceProperties EncryptionConfigMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::AIOps::InvestigationGroup.EncryptionConfigMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionConfigurationType"
                              Prelude.<$> encryptionConfigurationType,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON EncryptionConfigMapProperty where
  toJSON EncryptionConfigMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionConfigurationType"
                 Prelude.<$> encryptionConfigurationType,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "EncryptionConfigurationType" EncryptionConfigMapProperty where
  type PropertyType "EncryptionConfigurationType" EncryptionConfigMapProperty = Value Prelude.Text
  set newValue EncryptionConfigMapProperty {..}
    = EncryptionConfigMapProperty
        {encryptionConfigurationType = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EncryptionConfigMapProperty where
  type PropertyType "KmsKeyId" EncryptionConfigMapProperty = Value Prelude.Text
  set newValue EncryptionConfigMapProperty {..}
    = EncryptionConfigMapProperty
        {kmsKeyId = Prelude.pure newValue, ..}