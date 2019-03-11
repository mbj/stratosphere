{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html

module Stratosphere.ResourceProperties.DMSEndpointS3Settings where

import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointS3Settings. See
-- 'dmsEndpointS3Settings' for a more convenient constructor.
data DMSEndpointS3Settings =
  DMSEndpointS3Settings
  { _dMSEndpointS3SettingsBucketFolder :: Maybe (Val Text)
  , _dMSEndpointS3SettingsBucketName :: Maybe (Val Text)
  , _dMSEndpointS3SettingsCompressionType :: Maybe (Val Text)
  , _dMSEndpointS3SettingsCsvDelimiter :: Maybe (Val Text)
  , _dMSEndpointS3SettingsCsvRowDelimiter :: Maybe (Val Text)
  , _dMSEndpointS3SettingsExternalTableDefinition :: Maybe (Val Text)
  , _dMSEndpointS3SettingsServiceAccessRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointS3Settings where
  toJSON DMSEndpointS3Settings{..} =
    object $
    catMaybes
    [ fmap (("BucketFolder",) . toJSON) _dMSEndpointS3SettingsBucketFolder
    , fmap (("BucketName",) . toJSON) _dMSEndpointS3SettingsBucketName
    , fmap (("CompressionType",) . toJSON) _dMSEndpointS3SettingsCompressionType
    , fmap (("CsvDelimiter",) . toJSON) _dMSEndpointS3SettingsCsvDelimiter
    , fmap (("CsvRowDelimiter",) . toJSON) _dMSEndpointS3SettingsCsvRowDelimiter
    , fmap (("ExternalTableDefinition",) . toJSON) _dMSEndpointS3SettingsExternalTableDefinition
    , fmap (("ServiceAccessRoleArn",) . toJSON) _dMSEndpointS3SettingsServiceAccessRoleArn
    ]

-- | Constructor for 'DMSEndpointS3Settings' containing required fields as
-- arguments.
dmsEndpointS3Settings
  :: DMSEndpointS3Settings
dmsEndpointS3Settings  =
  DMSEndpointS3Settings
  { _dMSEndpointS3SettingsBucketFolder = Nothing
  , _dMSEndpointS3SettingsBucketName = Nothing
  , _dMSEndpointS3SettingsCompressionType = Nothing
  , _dMSEndpointS3SettingsCsvDelimiter = Nothing
  , _dMSEndpointS3SettingsCsvRowDelimiter = Nothing
  , _dMSEndpointS3SettingsExternalTableDefinition = Nothing
  , _dMSEndpointS3SettingsServiceAccessRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketfolder
dmsessBucketFolder :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessBucketFolder = lens _dMSEndpointS3SettingsBucketFolder (\s a -> s { _dMSEndpointS3SettingsBucketFolder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-bucketname
dmsessBucketName :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessBucketName = lens _dMSEndpointS3SettingsBucketName (\s a -> s { _dMSEndpointS3SettingsBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-compressiontype
dmsessCompressionType :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessCompressionType = lens _dMSEndpointS3SettingsCompressionType (\s a -> s { _dMSEndpointS3SettingsCompressionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvdelimiter
dmsessCsvDelimiter :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessCsvDelimiter = lens _dMSEndpointS3SettingsCsvDelimiter (\s a -> s { _dMSEndpointS3SettingsCsvDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-csvrowdelimiter
dmsessCsvRowDelimiter :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessCsvRowDelimiter = lens _dMSEndpointS3SettingsCsvRowDelimiter (\s a -> s { _dMSEndpointS3SettingsCsvRowDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-externaltabledefinition
dmsessExternalTableDefinition :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessExternalTableDefinition = lens _dMSEndpointS3SettingsExternalTableDefinition (\s a -> s { _dMSEndpointS3SettingsExternalTableDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-s3settings.html#cfn-dms-endpoint-s3settings-serviceaccessrolearn
dmsessServiceAccessRoleArn :: Lens' DMSEndpointS3Settings (Maybe (Val Text))
dmsessServiceAccessRoleArn = lens _dMSEndpointS3SettingsServiceAccessRoleArn (\s a -> s { _dMSEndpointS3SettingsServiceAccessRoleArn = a })
