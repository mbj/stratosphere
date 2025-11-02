module Stratosphere.DMS.Endpoint.S3SettingsProperty (
        S3SettingsProperty(..), mkS3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html>
    S3SettingsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-addcolumnname>
                        addColumnName :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-addtrailingpaddingcharacter>
                        addTrailingPaddingCharacter :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketfolder>
                        bucketFolder :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketname>
                        bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cannedaclforobjects>
                        cannedAclForObjects :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cdcinsertsandupdates>
                        cdcInsertsAndUpdates :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cdcinsertsonly>
                        cdcInsertsOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cdcmaxbatchinterval>
                        cdcMaxBatchInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cdcminfilesize>
                        cdcMinFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-cdcpath>
                        cdcPath :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-compressiontype>
                        compressionType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvdelimiter>
                        csvDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvnosupvalue>
                        csvNoSupValue :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvnullvalue>
                        csvNullValue :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvrowdelimiter>
                        csvRowDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-dataformat>
                        dataFormat :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-datapagesize>
                        dataPageSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-datepartitiondelimiter>
                        datePartitionDelimiter :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-datepartitionenabled>
                        datePartitionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-datepartitionsequence>
                        datePartitionSequence :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-datepartitiontimezone>
                        datePartitionTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-dictpagesizelimit>
                        dictPageSizeLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-enablestatistics>
                        enableStatistics :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-encodingtype>
                        encodingType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-encryptionmode>
                        encryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-expectedbucketowner>
                        expectedBucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-externaltabledefinition>
                        externalTableDefinition :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-gluecataloggeneration>
                        glueCatalogGeneration :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-ignoreheaderrows>
                        ignoreHeaderRows :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-includeopforfullload>
                        includeOpForFullLoad :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-maxfilesize>
                        maxFileSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-parquettimestampinmillisecond>
                        parquetTimestampInMillisecond :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-parquetversion>
                        parquetVersion :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-preservetransactions>
                        preserveTransactions :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-rfc4180>
                        rfc4180 :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-rowgrouplength>
                        rowGroupLength :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-serversideencryptionkmskeyid>
                        serverSideEncryptionKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-serviceaccessrolearn>
                        serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-timestampcolumnname>
                        timestampColumnName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-usecsvnosupvalue>
                        useCsvNoSupValue :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-usetaskstarttimeforfullloadtimestamp>
                        useTaskStartTimeForFullLoadTimestamp :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3SettingsProperty :: S3SettingsProperty
mkS3SettingsProperty
  = S3SettingsProperty
      {haddock_workaround_ = (), addColumnName = Prelude.Nothing,
       addTrailingPaddingCharacter = Prelude.Nothing,
       bucketFolder = Prelude.Nothing, bucketName = Prelude.Nothing,
       cannedAclForObjects = Prelude.Nothing,
       cdcInsertsAndUpdates = Prelude.Nothing,
       cdcInsertsOnly = Prelude.Nothing,
       cdcMaxBatchInterval = Prelude.Nothing,
       cdcMinFileSize = Prelude.Nothing, cdcPath = Prelude.Nothing,
       compressionType = Prelude.Nothing, csvDelimiter = Prelude.Nothing,
       csvNoSupValue = Prelude.Nothing, csvNullValue = Prelude.Nothing,
       csvRowDelimiter = Prelude.Nothing, dataFormat = Prelude.Nothing,
       dataPageSize = Prelude.Nothing,
       datePartitionDelimiter = Prelude.Nothing,
       datePartitionEnabled = Prelude.Nothing,
       datePartitionSequence = Prelude.Nothing,
       datePartitionTimezone = Prelude.Nothing,
       dictPageSizeLimit = Prelude.Nothing,
       enableStatistics = Prelude.Nothing, encodingType = Prelude.Nothing,
       encryptionMode = Prelude.Nothing,
       expectedBucketOwner = Prelude.Nothing,
       externalTableDefinition = Prelude.Nothing,
       glueCatalogGeneration = Prelude.Nothing,
       ignoreHeaderRows = Prelude.Nothing,
       includeOpForFullLoad = Prelude.Nothing,
       maxFileSize = Prelude.Nothing,
       parquetTimestampInMillisecond = Prelude.Nothing,
       parquetVersion = Prelude.Nothing,
       preserveTransactions = Prelude.Nothing, rfc4180 = Prelude.Nothing,
       rowGroupLength = Prelude.Nothing,
       serverSideEncryptionKmsKeyId = Prelude.Nothing,
       serviceAccessRoleArn = Prelude.Nothing,
       timestampColumnName = Prelude.Nothing,
       useCsvNoSupValue = Prelude.Nothing,
       useTaskStartTimeForFullLoadTimestamp = Prelude.Nothing}
instance ToResourceProperties S3SettingsProperty where
  toResourceProperties S3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.S3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddColumnName" Prelude.<$> addColumnName,
                            (JSON..=) "AddTrailingPaddingCharacter"
                              Prelude.<$> addTrailingPaddingCharacter,
                            (JSON..=) "BucketFolder" Prelude.<$> bucketFolder,
                            (JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "CannedAclForObjects" Prelude.<$> cannedAclForObjects,
                            (JSON..=) "CdcInsertsAndUpdates" Prelude.<$> cdcInsertsAndUpdates,
                            (JSON..=) "CdcInsertsOnly" Prelude.<$> cdcInsertsOnly,
                            (JSON..=) "CdcMaxBatchInterval" Prelude.<$> cdcMaxBatchInterval,
                            (JSON..=) "CdcMinFileSize" Prelude.<$> cdcMinFileSize,
                            (JSON..=) "CdcPath" Prelude.<$> cdcPath,
                            (JSON..=) "CompressionType" Prelude.<$> compressionType,
                            (JSON..=) "CsvDelimiter" Prelude.<$> csvDelimiter,
                            (JSON..=) "CsvNoSupValue" Prelude.<$> csvNoSupValue,
                            (JSON..=) "CsvNullValue" Prelude.<$> csvNullValue,
                            (JSON..=) "CsvRowDelimiter" Prelude.<$> csvRowDelimiter,
                            (JSON..=) "DataFormat" Prelude.<$> dataFormat,
                            (JSON..=) "DataPageSize" Prelude.<$> dataPageSize,
                            (JSON..=) "DatePartitionDelimiter"
                              Prelude.<$> datePartitionDelimiter,
                            (JSON..=) "DatePartitionEnabled" Prelude.<$> datePartitionEnabled,
                            (JSON..=) "DatePartitionSequence"
                              Prelude.<$> datePartitionSequence,
                            (JSON..=) "DatePartitionTimezone"
                              Prelude.<$> datePartitionTimezone,
                            (JSON..=) "DictPageSizeLimit" Prelude.<$> dictPageSizeLimit,
                            (JSON..=) "EnableStatistics" Prelude.<$> enableStatistics,
                            (JSON..=) "EncodingType" Prelude.<$> encodingType,
                            (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
                            (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
                            (JSON..=) "ExternalTableDefinition"
                              Prelude.<$> externalTableDefinition,
                            (JSON..=) "GlueCatalogGeneration"
                              Prelude.<$> glueCatalogGeneration,
                            (JSON..=) "IgnoreHeaderRows" Prelude.<$> ignoreHeaderRows,
                            (JSON..=) "IncludeOpForFullLoad" Prelude.<$> includeOpForFullLoad,
                            (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
                            (JSON..=) "ParquetTimestampInMillisecond"
                              Prelude.<$> parquetTimestampInMillisecond,
                            (JSON..=) "ParquetVersion" Prelude.<$> parquetVersion,
                            (JSON..=) "PreserveTransactions" Prelude.<$> preserveTransactions,
                            (JSON..=) "Rfc4180" Prelude.<$> rfc4180,
                            (JSON..=) "RowGroupLength" Prelude.<$> rowGroupLength,
                            (JSON..=) "ServerSideEncryptionKmsKeyId"
                              Prelude.<$> serverSideEncryptionKmsKeyId,
                            (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
                            (JSON..=) "TimestampColumnName" Prelude.<$> timestampColumnName,
                            (JSON..=) "UseCsvNoSupValue" Prelude.<$> useCsvNoSupValue,
                            (JSON..=) "UseTaskStartTimeForFullLoadTimestamp"
                              Prelude.<$> useTaskStartTimeForFullLoadTimestamp])}
instance JSON.ToJSON S3SettingsProperty where
  toJSON S3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddColumnName" Prelude.<$> addColumnName,
               (JSON..=) "AddTrailingPaddingCharacter"
                 Prelude.<$> addTrailingPaddingCharacter,
               (JSON..=) "BucketFolder" Prelude.<$> bucketFolder,
               (JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "CannedAclForObjects" Prelude.<$> cannedAclForObjects,
               (JSON..=) "CdcInsertsAndUpdates" Prelude.<$> cdcInsertsAndUpdates,
               (JSON..=) "CdcInsertsOnly" Prelude.<$> cdcInsertsOnly,
               (JSON..=) "CdcMaxBatchInterval" Prelude.<$> cdcMaxBatchInterval,
               (JSON..=) "CdcMinFileSize" Prelude.<$> cdcMinFileSize,
               (JSON..=) "CdcPath" Prelude.<$> cdcPath,
               (JSON..=) "CompressionType" Prelude.<$> compressionType,
               (JSON..=) "CsvDelimiter" Prelude.<$> csvDelimiter,
               (JSON..=) "CsvNoSupValue" Prelude.<$> csvNoSupValue,
               (JSON..=) "CsvNullValue" Prelude.<$> csvNullValue,
               (JSON..=) "CsvRowDelimiter" Prelude.<$> csvRowDelimiter,
               (JSON..=) "DataFormat" Prelude.<$> dataFormat,
               (JSON..=) "DataPageSize" Prelude.<$> dataPageSize,
               (JSON..=) "DatePartitionDelimiter"
                 Prelude.<$> datePartitionDelimiter,
               (JSON..=) "DatePartitionEnabled" Prelude.<$> datePartitionEnabled,
               (JSON..=) "DatePartitionSequence"
                 Prelude.<$> datePartitionSequence,
               (JSON..=) "DatePartitionTimezone"
                 Prelude.<$> datePartitionTimezone,
               (JSON..=) "DictPageSizeLimit" Prelude.<$> dictPageSizeLimit,
               (JSON..=) "EnableStatistics" Prelude.<$> enableStatistics,
               (JSON..=) "EncodingType" Prelude.<$> encodingType,
               (JSON..=) "EncryptionMode" Prelude.<$> encryptionMode,
               (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
               (JSON..=) "ExternalTableDefinition"
                 Prelude.<$> externalTableDefinition,
               (JSON..=) "GlueCatalogGeneration"
                 Prelude.<$> glueCatalogGeneration,
               (JSON..=) "IgnoreHeaderRows" Prelude.<$> ignoreHeaderRows,
               (JSON..=) "IncludeOpForFullLoad" Prelude.<$> includeOpForFullLoad,
               (JSON..=) "MaxFileSize" Prelude.<$> maxFileSize,
               (JSON..=) "ParquetTimestampInMillisecond"
                 Prelude.<$> parquetTimestampInMillisecond,
               (JSON..=) "ParquetVersion" Prelude.<$> parquetVersion,
               (JSON..=) "PreserveTransactions" Prelude.<$> preserveTransactions,
               (JSON..=) "Rfc4180" Prelude.<$> rfc4180,
               (JSON..=) "RowGroupLength" Prelude.<$> rowGroupLength,
               (JSON..=) "ServerSideEncryptionKmsKeyId"
                 Prelude.<$> serverSideEncryptionKmsKeyId,
               (JSON..=) "ServiceAccessRoleArn" Prelude.<$> serviceAccessRoleArn,
               (JSON..=) "TimestampColumnName" Prelude.<$> timestampColumnName,
               (JSON..=) "UseCsvNoSupValue" Prelude.<$> useCsvNoSupValue,
               (JSON..=) "UseTaskStartTimeForFullLoadTimestamp"
                 Prelude.<$> useTaskStartTimeForFullLoadTimestamp]))
instance Property "AddColumnName" S3SettingsProperty where
  type PropertyType "AddColumnName" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {addColumnName = Prelude.pure newValue, ..}
instance Property "AddTrailingPaddingCharacter" S3SettingsProperty where
  type PropertyType "AddTrailingPaddingCharacter" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {addTrailingPaddingCharacter = Prelude.pure newValue, ..}
instance Property "BucketFolder" S3SettingsProperty where
  type PropertyType "BucketFolder" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {bucketFolder = Prelude.pure newValue, ..}
instance Property "BucketName" S3SettingsProperty where
  type PropertyType "BucketName" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {bucketName = Prelude.pure newValue, ..}
instance Property "CannedAclForObjects" S3SettingsProperty where
  type PropertyType "CannedAclForObjects" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {cannedAclForObjects = Prelude.pure newValue, ..}
instance Property "CdcInsertsAndUpdates" S3SettingsProperty where
  type PropertyType "CdcInsertsAndUpdates" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {cdcInsertsAndUpdates = Prelude.pure newValue, ..}
instance Property "CdcInsertsOnly" S3SettingsProperty where
  type PropertyType "CdcInsertsOnly" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {cdcInsertsOnly = Prelude.pure newValue, ..}
instance Property "CdcMaxBatchInterval" S3SettingsProperty where
  type PropertyType "CdcMaxBatchInterval" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {cdcMaxBatchInterval = Prelude.pure newValue, ..}
instance Property "CdcMinFileSize" S3SettingsProperty where
  type PropertyType "CdcMinFileSize" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {cdcMinFileSize = Prelude.pure newValue, ..}
instance Property "CdcPath" S3SettingsProperty where
  type PropertyType "CdcPath" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {cdcPath = Prelude.pure newValue, ..}
instance Property "CompressionType" S3SettingsProperty where
  type PropertyType "CompressionType" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {compressionType = Prelude.pure newValue, ..}
instance Property "CsvDelimiter" S3SettingsProperty where
  type PropertyType "CsvDelimiter" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {csvDelimiter = Prelude.pure newValue, ..}
instance Property "CsvNoSupValue" S3SettingsProperty where
  type PropertyType "CsvNoSupValue" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {csvNoSupValue = Prelude.pure newValue, ..}
instance Property "CsvNullValue" S3SettingsProperty where
  type PropertyType "CsvNullValue" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {csvNullValue = Prelude.pure newValue, ..}
instance Property "CsvRowDelimiter" S3SettingsProperty where
  type PropertyType "CsvRowDelimiter" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {csvRowDelimiter = Prelude.pure newValue, ..}
instance Property "DataFormat" S3SettingsProperty where
  type PropertyType "DataFormat" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {dataFormat = Prelude.pure newValue, ..}
instance Property "DataPageSize" S3SettingsProperty where
  type PropertyType "DataPageSize" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {dataPageSize = Prelude.pure newValue, ..}
instance Property "DatePartitionDelimiter" S3SettingsProperty where
  type PropertyType "DatePartitionDelimiter" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {datePartitionDelimiter = Prelude.pure newValue, ..}
instance Property "DatePartitionEnabled" S3SettingsProperty where
  type PropertyType "DatePartitionEnabled" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {datePartitionEnabled = Prelude.pure newValue, ..}
instance Property "DatePartitionSequence" S3SettingsProperty where
  type PropertyType "DatePartitionSequence" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {datePartitionSequence = Prelude.pure newValue, ..}
instance Property "DatePartitionTimezone" S3SettingsProperty where
  type PropertyType "DatePartitionTimezone" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {datePartitionTimezone = Prelude.pure newValue, ..}
instance Property "DictPageSizeLimit" S3SettingsProperty where
  type PropertyType "DictPageSizeLimit" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {dictPageSizeLimit = Prelude.pure newValue, ..}
instance Property "EnableStatistics" S3SettingsProperty where
  type PropertyType "EnableStatistics" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {enableStatistics = Prelude.pure newValue, ..}
instance Property "EncodingType" S3SettingsProperty where
  type PropertyType "EncodingType" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {encodingType = Prelude.pure newValue, ..}
instance Property "EncryptionMode" S3SettingsProperty where
  type PropertyType "EncryptionMode" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {encryptionMode = Prelude.pure newValue, ..}
instance Property "ExpectedBucketOwner" S3SettingsProperty where
  type PropertyType "ExpectedBucketOwner" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {expectedBucketOwner = Prelude.pure newValue, ..}
instance Property "ExternalTableDefinition" S3SettingsProperty where
  type PropertyType "ExternalTableDefinition" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {externalTableDefinition = Prelude.pure newValue, ..}
instance Property "GlueCatalogGeneration" S3SettingsProperty where
  type PropertyType "GlueCatalogGeneration" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {glueCatalogGeneration = Prelude.pure newValue, ..}
instance Property "IgnoreHeaderRows" S3SettingsProperty where
  type PropertyType "IgnoreHeaderRows" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {ignoreHeaderRows = Prelude.pure newValue, ..}
instance Property "IncludeOpForFullLoad" S3SettingsProperty where
  type PropertyType "IncludeOpForFullLoad" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {includeOpForFullLoad = Prelude.pure newValue, ..}
instance Property "MaxFileSize" S3SettingsProperty where
  type PropertyType "MaxFileSize" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {maxFileSize = Prelude.pure newValue, ..}
instance Property "ParquetTimestampInMillisecond" S3SettingsProperty where
  type PropertyType "ParquetTimestampInMillisecond" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {parquetTimestampInMillisecond = Prelude.pure newValue, ..}
instance Property "ParquetVersion" S3SettingsProperty where
  type PropertyType "ParquetVersion" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {parquetVersion = Prelude.pure newValue, ..}
instance Property "PreserveTransactions" S3SettingsProperty where
  type PropertyType "PreserveTransactions" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {preserveTransactions = Prelude.pure newValue, ..}
instance Property "Rfc4180" S3SettingsProperty where
  type PropertyType "Rfc4180" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {rfc4180 = Prelude.pure newValue, ..}
instance Property "RowGroupLength" S3SettingsProperty where
  type PropertyType "RowGroupLength" S3SettingsProperty = Value Prelude.Integer
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {rowGroupLength = Prelude.pure newValue, ..}
instance Property "ServerSideEncryptionKmsKeyId" S3SettingsProperty where
  type PropertyType "ServerSideEncryptionKmsKeyId" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {serverSideEncryptionKmsKeyId = Prelude.pure newValue, ..}
instance Property "ServiceAccessRoleArn" S3SettingsProperty where
  type PropertyType "ServiceAccessRoleArn" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}
instance Property "TimestampColumnName" S3SettingsProperty where
  type PropertyType "TimestampColumnName" S3SettingsProperty = Value Prelude.Text
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {timestampColumnName = Prelude.pure newValue, ..}
instance Property "UseCsvNoSupValue" S3SettingsProperty where
  type PropertyType "UseCsvNoSupValue" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty {useCsvNoSupValue = Prelude.pure newValue, ..}
instance Property "UseTaskStartTimeForFullLoadTimestamp" S3SettingsProperty where
  type PropertyType "UseTaskStartTimeForFullLoadTimestamp" S3SettingsProperty = Value Prelude.Bool
  set newValue S3SettingsProperty {..}
    = S3SettingsProperty
        {useTaskStartTimeForFullLoadTimestamp = Prelude.pure newValue, ..}