module Stratosphere.StepFunctions.Activity.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-encryptionconfiguration.html>
    EncryptionConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-encryptionconfiguration.html#cfn-stepfunctions-activity-encryptionconfiguration-kmsdatakeyreuseperiodseconds>
                                     kmsDataKeyReusePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-encryptionconfiguration.html#cfn-stepfunctions-activity-encryptionconfiguration-kmskeyid>
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-encryptionconfiguration.html#cfn-stepfunctions-activity-encryptionconfiguration-type>
                                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Text -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty type'
  = EncryptionConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       kmsDataKeyReusePeriodSeconds = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::Activity.EncryptionConfiguration",
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