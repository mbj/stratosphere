module Stratosphere.DMS.Endpoint.IbmDb2SettingsProperty (
        IbmDb2SettingsProperty(..), mkIbmDb2SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IbmDb2SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html>
    IbmDb2SettingsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-currentlsn>
                            currentLsn :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-keepcsvfiles>
                            keepCsvFiles :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-loadtimeout>
                            loadTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-maxfilesize>
                            maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-maxkbytesperread>
                            maxKBytesPerRead :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-secretsmanageraccessrolearn>
                            secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-secretsmanagersecretid>
                            secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-setdatacapturechanges>
                            setDataCaptureChanges :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-ibmdb2settings.html#cfn-dms-endpoint-ibmdb2settings-writebuffersize>
                            writeBufferSize :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIbmDb2SettingsProperty :: IbmDb2SettingsProperty
mkIbmDb2SettingsProperty
  = IbmDb2SettingsProperty
      {haddock_workaround_ = (), currentLsn = Prelude.Nothing,
       keepCsvFiles = Prelude.Nothing, loadTimeout = Prelude.Nothing,
       maxFileSize = Prelude.Nothing, maxKBytesPerRead = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       setDataCaptureChanges = Prelude.Nothing,
       writeBufferSize = Prelude.Nothing}
instance ToResourceProperties IbmDb2SettingsProperty where
  toResourceProperties IbmDb2SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.IbmDb2Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CurrentLsn" Prelude.<$> currentLsn,
                            (JSON..=) "KeepCsvFiles" Prelude.<$> keepCsvFiles,
                            (JSON..=) "LoadTimeout" Prelude.<$> loadTimeout,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "MaxKBytesPerRead" Prelude.<$> maxKBytesPerRead,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "SetDataCaptureChanges"
                              Prelude.<$> setDataCaptureChanges,
                            (JSON..=) "WriteBufferSize" Prelude.<$> writeBufferSize])}
instance JSON.ToJSON IbmDb2SettingsProperty where
  toJSON IbmDb2SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CurrentLsn" Prelude.<$> currentLsn,
               (JSON..=) "KeepCsvFiles" Prelude.<$> keepCsvFiles,
               (JSON..=) "LoadTimeout" Prelude.<$> loadTimeout,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "MaxKBytesPerRead" Prelude.<$> maxKBytesPerRead,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "SetDataCaptureChanges"
                 Prelude.<$> setDataCaptureChanges,
               (JSON..=) "WriteBufferSize" Prelude.<$> writeBufferSize]))
instance Property "CurrentLsn" IbmDb2SettingsProperty where
  type PropertyType "CurrentLsn" IbmDb2SettingsProperty = Value Prelude.Text
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty {currentLsn = Prelude.pure newValue, ..}
instance Property "KeepCsvFiles" IbmDb2SettingsProperty where
  type PropertyType "KeepCsvFiles" IbmDb2SettingsProperty = Value Prelude.Bool
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty {keepCsvFiles = Prelude.pure newValue, ..}
instance Property "LoadTimeout" IbmDb2SettingsProperty where
  type PropertyType "LoadTimeout" IbmDb2SettingsProperty = Value Prelude.Integer
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty {loadTimeout = Prelude.pure newValue, ..}
instance Property "MaxFileSize" IbmDb2SettingsProperty where
  type PropertyType "MaxFileSize" IbmDb2SettingsProperty = Value Prelude.Integer
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty {maxFileSize = Prelude.pure newValue, ..}
instance Property "MaxKBytesPerRead" IbmDb2SettingsProperty where
  type PropertyType "MaxKBytesPerRead" IbmDb2SettingsProperty = Value Prelude.Integer
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty
        {maxKBytesPerRead = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" IbmDb2SettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" IbmDb2SettingsProperty = Value Prelude.Text
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" IbmDb2SettingsProperty where
  type PropertyType "SecretsManagerSecretId" IbmDb2SettingsProperty = Value Prelude.Text
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "SetDataCaptureChanges" IbmDb2SettingsProperty where
  type PropertyType "SetDataCaptureChanges" IbmDb2SettingsProperty = Value Prelude.Bool
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty
        {setDataCaptureChanges = Prelude.pure newValue, ..}
instance Property "WriteBufferSize" IbmDb2SettingsProperty where
  type PropertyType "WriteBufferSize" IbmDb2SettingsProperty = Value Prelude.Integer
  set newValue IbmDb2SettingsProperty {..}
    = IbmDb2SettingsProperty
        {writeBufferSize = Prelude.pure newValue, ..}