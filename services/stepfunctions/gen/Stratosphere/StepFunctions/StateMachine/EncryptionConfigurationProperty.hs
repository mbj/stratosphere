module Stratosphere.StepFunctions.StateMachine.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {kmsDataKeyReusePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty type'
  = EncryptionConfigurationProperty
      {type' = type', kmsDataKeyReusePeriodSeconds = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "KmsDataKeyReusePeriodSeconds"
                                 Prelude.<$> kmsDataKeyReusePeriodSeconds,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "KmsDataKeyReusePeriodSeconds"
                    Prelude.<$> kmsDataKeyReusePeriodSeconds,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsDataKeyReusePeriodSeconds" EncryptionConfigurationProperty where
  type PropertyType "KmsDataKeyReusePeriodSeconds" EncryptionConfigurationProperty = Value Prelude.Integer
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kmsDataKeyReusePeriodSeconds = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EncryptionConfigurationProperty where
  type PropertyType "KmsKeyId" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Type" EncryptionConfigurationProperty where
  type PropertyType "Type" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {type' = newValue, ..}