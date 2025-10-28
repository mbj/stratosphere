module Stratosphere.EMRServerless.Application.S3MonitoringConfigurationProperty (
        S3MonitoringConfigurationProperty(..),
        mkS3MonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3MonitoringConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-s3monitoringconfiguration.html>
    S3MonitoringConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-s3monitoringconfiguration.html#cfn-emrserverless-application-s3monitoringconfiguration-encryptionkeyarn>
                                       encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-s3monitoringconfiguration.html#cfn-emrserverless-application-s3monitoringconfiguration-loguri>
                                       logUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3MonitoringConfigurationProperty ::
  S3MonitoringConfigurationProperty
mkS3MonitoringConfigurationProperty
  = S3MonitoringConfigurationProperty
      {haddock_workaround_ = (), encryptionKeyArn = Prelude.Nothing,
       logUri = Prelude.Nothing}
instance ToResourceProperties S3MonitoringConfigurationProperty where
  toResourceProperties S3MonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.S3MonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                            (JSON..=) "LogUri" Prelude.<$> logUri])}
instance JSON.ToJSON S3MonitoringConfigurationProperty where
  toJSON S3MonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
               (JSON..=) "LogUri" Prelude.<$> logUri]))
instance Property "EncryptionKeyArn" S3MonitoringConfigurationProperty where
  type PropertyType "EncryptionKeyArn" S3MonitoringConfigurationProperty = Value Prelude.Text
  set newValue S3MonitoringConfigurationProperty {..}
    = S3MonitoringConfigurationProperty
        {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "LogUri" S3MonitoringConfigurationProperty where
  type PropertyType "LogUri" S3MonitoringConfigurationProperty = Value Prelude.Text
  set newValue S3MonitoringConfigurationProperty {..}
    = S3MonitoringConfigurationProperty
        {logUri = Prelude.pure newValue, ..}