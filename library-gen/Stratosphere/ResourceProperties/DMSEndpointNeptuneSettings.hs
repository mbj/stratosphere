
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html

module Stratosphere.ResourceProperties.DMSEndpointNeptuneSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for DMSEndpointNeptuneSettings. See
-- 'dmsEndpointNeptuneSettings' for a more convenient constructor.
data DMSEndpointNeptuneSettings =
  DMSEndpointNeptuneSettings
  { _dMSEndpointNeptuneSettingsErrorRetryDuration :: Maybe (Val Integer)
  , _dMSEndpointNeptuneSettingsIamAuthEnabled :: Maybe (Val Bool)
  , _dMSEndpointNeptuneSettingsMaxFileSize :: Maybe (Val Integer)
  , _dMSEndpointNeptuneSettingsMaxRetryCount :: Maybe (Val Integer)
  , _dMSEndpointNeptuneSettingsS3BucketFolder :: Maybe (Val Text)
  , _dMSEndpointNeptuneSettingsS3BucketName :: Maybe (Val Text)
  , _dMSEndpointNeptuneSettingsServiceAccessRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DMSEndpointNeptuneSettings where
  toJSON DMSEndpointNeptuneSettings{..} =
    object $
    catMaybes
    [ fmap (("ErrorRetryDuration",) . toJSON) _dMSEndpointNeptuneSettingsErrorRetryDuration
    , fmap (("IamAuthEnabled",) . toJSON) _dMSEndpointNeptuneSettingsIamAuthEnabled
    , fmap (("MaxFileSize",) . toJSON) _dMSEndpointNeptuneSettingsMaxFileSize
    , fmap (("MaxRetryCount",) . toJSON) _dMSEndpointNeptuneSettingsMaxRetryCount
    , fmap (("S3BucketFolder",) . toJSON) _dMSEndpointNeptuneSettingsS3BucketFolder
    , fmap (("S3BucketName",) . toJSON) _dMSEndpointNeptuneSettingsS3BucketName
    , fmap (("ServiceAccessRoleArn",) . toJSON) _dMSEndpointNeptuneSettingsServiceAccessRoleArn
    ]

-- | Constructor for 'DMSEndpointNeptuneSettings' containing required fields
-- as arguments.
dmsEndpointNeptuneSettings
  :: DMSEndpointNeptuneSettings
dmsEndpointNeptuneSettings  =
  DMSEndpointNeptuneSettings
  { _dMSEndpointNeptuneSettingsErrorRetryDuration = Nothing
  , _dMSEndpointNeptuneSettingsIamAuthEnabled = Nothing
  , _dMSEndpointNeptuneSettingsMaxFileSize = Nothing
  , _dMSEndpointNeptuneSettingsMaxRetryCount = Nothing
  , _dMSEndpointNeptuneSettingsS3BucketFolder = Nothing
  , _dMSEndpointNeptuneSettingsS3BucketName = Nothing
  , _dMSEndpointNeptuneSettingsServiceAccessRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-errorretryduration
dmsensErrorRetryDuration :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Integer))
dmsensErrorRetryDuration = lens _dMSEndpointNeptuneSettingsErrorRetryDuration (\s a -> s { _dMSEndpointNeptuneSettingsErrorRetryDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-iamauthenabled
dmsensIamAuthEnabled :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Bool))
dmsensIamAuthEnabled = lens _dMSEndpointNeptuneSettingsIamAuthEnabled (\s a -> s { _dMSEndpointNeptuneSettingsIamAuthEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-maxfilesize
dmsensMaxFileSize :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Integer))
dmsensMaxFileSize = lens _dMSEndpointNeptuneSettingsMaxFileSize (\s a -> s { _dMSEndpointNeptuneSettingsMaxFileSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-maxretrycount
dmsensMaxRetryCount :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Integer))
dmsensMaxRetryCount = lens _dMSEndpointNeptuneSettingsMaxRetryCount (\s a -> s { _dMSEndpointNeptuneSettingsMaxRetryCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-s3bucketfolder
dmsensS3BucketFolder :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Text))
dmsensS3BucketFolder = lens _dMSEndpointNeptuneSettingsS3BucketFolder (\s a -> s { _dMSEndpointNeptuneSettingsS3BucketFolder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-s3bucketname
dmsensS3BucketName :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Text))
dmsensS3BucketName = lens _dMSEndpointNeptuneSettingsS3BucketName (\s a -> s { _dMSEndpointNeptuneSettingsS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-neptunesettings.html#cfn-dms-endpoint-neptunesettings-serviceaccessrolearn
dmsensServiceAccessRoleArn :: Lens' DMSEndpointNeptuneSettings (Maybe (Val Text))
dmsensServiceAccessRoleArn = lens _dMSEndpointNeptuneSettingsServiceAccessRoleArn (\s a -> s { _dMSEndpointNeptuneSettingsServiceAccessRoleArn = a })
