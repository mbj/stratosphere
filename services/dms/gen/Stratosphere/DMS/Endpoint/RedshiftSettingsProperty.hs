module Stratosphere.DMS.Endpoint.RedshiftSettingsProperty (
        RedshiftSettingsProperty(..), mkRedshiftSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftSettingsProperty
  = RedshiftSettingsProperty {acceptAnyDate :: (Prelude.Maybe (Value Prelude.Bool)),
                              afterConnectScript :: (Prelude.Maybe (Value Prelude.Text)),
                              bucketFolder :: (Prelude.Maybe (Value Prelude.Text)),
                              bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                              caseSensitiveNames :: (Prelude.Maybe (Value Prelude.Bool)),
                              compUpdate :: (Prelude.Maybe (Value Prelude.Bool)),
                              connectionTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                              dateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              emptyAsNull :: (Prelude.Maybe (Value Prelude.Bool)),
                              encryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                              explicitIds :: (Prelude.Maybe (Value Prelude.Bool)),
                              fileTransferUploadStreams :: (Prelude.Maybe (Value Prelude.Integer)),
                              loadTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                              maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                              removeQuotes :: (Prelude.Maybe (Value Prelude.Bool)),
                              replaceChars :: (Prelude.Maybe (Value Prelude.Text)),
                              replaceInvalidChars :: (Prelude.Maybe (Value Prelude.Text)),
                              secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                              serverSideEncryptionKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                              timeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              trimBlanks :: (Prelude.Maybe (Value Prelude.Bool)),
                              truncateColumns :: (Prelude.Maybe (Value Prelude.Bool)),
                              writeBufferSize :: (Prelude.Maybe (Value Prelude.Integer))}
mkRedshiftSettingsProperty :: RedshiftSettingsProperty
mkRedshiftSettingsProperty
  = RedshiftSettingsProperty
      {acceptAnyDate = Prelude.Nothing,
       afterConnectScript = Prelude.Nothing,
       bucketFolder = Prelude.Nothing, bucketName = Prelude.Nothing,
       caseSensitiveNames = Prelude.Nothing, compUpdate = Prelude.Nothing,
       connectionTimeout = Prelude.Nothing, dateFormat = Prelude.Nothing,
       emptyAsNull = Prelude.Nothing, encryptionMode = Prelude.Nothing,
       explicitIds = Prelude.Nothing,
       fileTransferUploadStreams = Prelude.Nothing,
       loadTimeout = Prelude.Nothing, maxFileSize = Prelude.Nothing,
       removeQuotes = Prelude.Nothing, replaceChars = Prelude.Nothing,
       replaceInvalidChars = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing,
       serverSideEncryptionKmsKeyId = Prelude.Nothing,
       serviceAccessRoleArn = Prelude.Nothing,
       timeFormat = Prelude.Nothing, trimBlanks = Prelude.Nothing,
       truncateColumns = Prelude.Nothing,
       writeBufferSize = Prelude.Nothing}
instance ToResourceProperties RedshiftSettingsProperty where
  toResourceProperties RedshiftSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.RedshiftSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceptAnyDate" Prelude.<$> acceptAnyDate,
                            (JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
                            (JSON..=) "BucketFolder" Prelude.<$> bucketFolder,
                            (JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "CaseSensitiveNames" Prelude.<$> caseSensitiveNames,
                            (JSON..=) "CompUpdate" Prelude.<$> compUpdate,
                            (JSON..=) "ConnectionTimeout" Prelude.<$> connectionTimeout,
                            (JSON..=) "DateFormat" Prelude.<$> dateFormat,
                            (JSON..=) "EmptyAsNull" Prelude.<$> emptyAsNull,
                            (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
                            (JSON..=) "ExplicitIds" Prelude.<$> explicitIds,
                            (JSON..=) "FileTransferUploadStreams"
                              Prelude.<$> fileTransferUploadStreams,
                            (JSON..=) "LoadTimeout" Prelude.<$> loadTimeout,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "RemoveQuotes" Prelude.<$> removeQuotes,
                            (JSON..=) "ReplaceChars" Prelude.<$> replaceChars,
                            (JSON..=) "ReplaceInvalidChars" Prelude.<$> replaceInvalidChars,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId,
                            (JSON..=) "ServerSideEncryptionKmsKeyId"
                              Prelude.<$> serverSideEncryptionKmsKeyId,
                            (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
                            (JSON..=) "TimeFormat" Prelude.<$> timeFormat,
                            (JSON..=) "TrimBlanks" Prelude.<$> trimBlanks,
                            (JSON..=) "TruncateColumns" Prelude.<$> truncateColumns,
                            (JSON..=) "WriteBufferSize" Prelude.<$> writeBufferSize])}
instance JSON.ToJSON RedshiftSettingsProperty where
  toJSON RedshiftSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcceptAnyDate" Prelude.<$> acceptAnyDate,
               (JSON..=) "AfterConnectScript" Prelude.<$> afterConnectScript,
               (JSON..=) "BucketFolder" Prelude.<$> bucketFolder,
               (JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "CaseSensitiveNames" Prelude.<$> caseSensitiveNames,
               (JSON..=) "CompUpdate" Prelude.<$> compUpdate,
               (JSON..=) "ConnectionTimeout" Prelude.<$> connectionTimeout,
               (JSON..=) "DateFormat" Prelude.<$> dateFormat,
               (JSON..=) "EmptyAsNull" Prelude.<$> emptyAsNull,
               (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
               (JSON..=) "ExplicitIds" Prelude.<$> explicitIds,
               (JSON..=) "FileTransferUploadStreams"
                 Prelude.<$> fileTransferUploadStreams,
               (JSON..=) "LoadTimeout" Prelude.<$> loadTimeout,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "RemoveQuotes" Prelude.<$> removeQuotes,
               (JSON..=) "ReplaceChars" Prelude.<$> replaceChars,
               (JSON..=) "ReplaceInvalidChars" Prelude.<$> replaceInvalidChars,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId,
               (JSON..=) "ServerSideEncryptionKmsKeyId"
                 Prelude.<$> serverSideEncryptionKmsKeyId,
               (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
               (JSON..=) "TimeFormat" Prelude.<$> timeFormat,
               (JSON..=) "TrimBlanks" Prelude.<$> trimBlanks,
               (JSON..=) "TruncateColumns" Prelude.<$> truncateColumns,
               (JSON..=) "WriteBufferSize" Prelude.<$> writeBufferSize]))
instance Property "AcceptAnyDate" RedshiftSettingsProperty where
  type PropertyType "AcceptAnyDate" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {acceptAnyDate = Prelude.pure newValue, ..}
instance Property "AfterConnectScript" RedshiftSettingsProperty where
  type PropertyType "AfterConnectScript" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {afterConnectScript = Prelude.pure newValue, ..}
instance Property "BucketFolder" RedshiftSettingsProperty where
  type PropertyType "BucketFolder" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {bucketFolder = Prelude.pure newValue, ..}
instance Property "BucketName" RedshiftSettingsProperty where
  type PropertyType "BucketName" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {bucketName = Prelude.pure newValue, ..}
instance Property "CaseSensitiveNames" RedshiftSettingsProperty where
  type PropertyType "CaseSensitiveNames" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {caseSensitiveNames = Prelude.pure newValue, ..}
instance Property "CompUpdate" RedshiftSettingsProperty where
  type PropertyType "CompUpdate" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {compUpdate = Prelude.pure newValue, ..}
instance Property "ConnectionTimeout" RedshiftSettingsProperty where
  type PropertyType "ConnectionTimeout" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {connectionTimeout = Prelude.pure newValue, ..}
instance Property "DateFormat" RedshiftSettingsProperty where
  type PropertyType "DateFormat" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {dateFormat = Prelude.pure newValue, ..}
instance Property "EmptyAsNull" RedshiftSettingsProperty where
  type PropertyType "EmptyAsNull" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {emptyAsNull = Prelude.pure newValue, ..}
instance Property "EncryptionMode" RedshiftSettingsProperty where
  type PropertyType "EncryptionMode" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {encryptionMode = Prelude.pure newValue, ..}
instance Property "ExplicitIds" RedshiftSettingsProperty where
  type PropertyType "ExplicitIds" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {explicitIds = Prelude.pure newValue, ..}
instance Property "FileTransferUploadStreams" RedshiftSettingsProperty where
  type PropertyType "FileTransferUploadStreams" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {fileTransferUploadStreams = Prelude.pure newValue, ..}
instance Property "LoadTimeout" RedshiftSettingsProperty where
  type PropertyType "LoadTimeout" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {loadTimeout = Prelude.pure newValue, ..}
instance Property "MaxFileSize" RedshiftSettingsProperty where
  type PropertyType "MaxFileSize" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {maxFileSize = Prelude.pure newValue, ..}
instance Property "RemoveQuotes" RedshiftSettingsProperty where
  type PropertyType "RemoveQuotes" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {removeQuotes = Prelude.pure newValue, ..}
instance Property "ReplaceChars" RedshiftSettingsProperty where
  type PropertyType "ReplaceChars" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {replaceChars = Prelude.pure newValue, ..}
instance Property "ReplaceInvalidChars" RedshiftSettingsProperty where
  type PropertyType "ReplaceInvalidChars" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {replaceInvalidChars = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" RedshiftSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" RedshiftSettingsProperty where
  type PropertyType "SecretsManagerSecretId" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}
instance Property "ServerSideEncryptionKmsKeyId" RedshiftSettingsProperty where
  type PropertyType "ServerSideEncryptionKmsKeyId" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {serverSideEncryptionKmsKeyId = Prelude.pure newValue, ..}
instance Property "ServiceAccessRoleArn" RedshiftSettingsProperty where
  type PropertyType "ServiceAccessRoleArn" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}
instance Property "TimeFormat" RedshiftSettingsProperty where
  type PropertyType "TimeFormat" RedshiftSettingsProperty = Value Prelude.Text
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {timeFormat = Prelude.pure newValue, ..}
instance Property "TrimBlanks" RedshiftSettingsProperty where
  type PropertyType "TrimBlanks" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty {trimBlanks = Prelude.pure newValue, ..}
instance Property "TruncateColumns" RedshiftSettingsProperty where
  type PropertyType "TruncateColumns" RedshiftSettingsProperty = Value Prelude.Bool
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {truncateColumns = Prelude.pure newValue, ..}
instance Property "WriteBufferSize" RedshiftSettingsProperty where
  type PropertyType "WriteBufferSize" RedshiftSettingsProperty = Value Prelude.Integer
  set newValue RedshiftSettingsProperty {..}
    = RedshiftSettingsProperty
        {writeBufferSize = Prelude.pure newValue, ..}