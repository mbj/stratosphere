{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html

module Stratosphere.Resources.SSMResourceDataSync where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SSMResourceDataSyncS3Destination
import Stratosphere.ResourceProperties.SSMResourceDataSyncSyncSource

-- | Full data type definition for SSMResourceDataSync. See
-- 'ssmResourceDataSync' for a more convenient constructor.
data SSMResourceDataSync =
  SSMResourceDataSync
  { _sSMResourceDataSyncBucketName :: Maybe (Val Text)
  , _sSMResourceDataSyncBucketPrefix :: Maybe (Val Text)
  , _sSMResourceDataSyncBucketRegion :: Maybe (Val Text)
  , _sSMResourceDataSyncKMSKeyArn :: Maybe (Val Text)
  , _sSMResourceDataSyncS3Destination :: Maybe SSMResourceDataSyncS3Destination
  , _sSMResourceDataSyncSyncFormat :: Maybe (Val Text)
  , _sSMResourceDataSyncSyncName :: Val Text
  , _sSMResourceDataSyncSyncSource :: Maybe SSMResourceDataSyncSyncSource
  , _sSMResourceDataSyncSyncType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SSMResourceDataSync where
  toResourceProperties SSMResourceDataSync{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSM::ResourceDataSync"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BucketName",) . toJSON) _sSMResourceDataSyncBucketName
        , fmap (("BucketPrefix",) . toJSON) _sSMResourceDataSyncBucketPrefix
        , fmap (("BucketRegion",) . toJSON) _sSMResourceDataSyncBucketRegion
        , fmap (("KMSKeyArn",) . toJSON) _sSMResourceDataSyncKMSKeyArn
        , fmap (("S3Destination",) . toJSON) _sSMResourceDataSyncS3Destination
        , fmap (("SyncFormat",) . toJSON) _sSMResourceDataSyncSyncFormat
        , (Just . ("SyncName",) . toJSON) _sSMResourceDataSyncSyncName
        , fmap (("SyncSource",) . toJSON) _sSMResourceDataSyncSyncSource
        , fmap (("SyncType",) . toJSON) _sSMResourceDataSyncSyncType
        ]
    }

-- | Constructor for 'SSMResourceDataSync' containing required fields as
-- arguments.
ssmResourceDataSync
  :: Val Text -- ^ 'ssmrdsSyncName'
  -> SSMResourceDataSync
ssmResourceDataSync syncNamearg =
  SSMResourceDataSync
  { _sSMResourceDataSyncBucketName = Nothing
  , _sSMResourceDataSyncBucketPrefix = Nothing
  , _sSMResourceDataSyncBucketRegion = Nothing
  , _sSMResourceDataSyncKMSKeyArn = Nothing
  , _sSMResourceDataSyncS3Destination = Nothing
  , _sSMResourceDataSyncSyncFormat = Nothing
  , _sSMResourceDataSyncSyncName = syncNamearg
  , _sSMResourceDataSyncSyncSource = Nothing
  , _sSMResourceDataSyncSyncType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketname
ssmrdsBucketName :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsBucketName = lens _sSMResourceDataSyncBucketName (\s a -> s { _sSMResourceDataSyncBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketprefix
ssmrdsBucketPrefix :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsBucketPrefix = lens _sSMResourceDataSyncBucketPrefix (\s a -> s { _sSMResourceDataSyncBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketregion
ssmrdsBucketRegion :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsBucketRegion = lens _sSMResourceDataSyncBucketRegion (\s a -> s { _sSMResourceDataSyncBucketRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-kmskeyarn
ssmrdsKMSKeyArn :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsKMSKeyArn = lens _sSMResourceDataSyncKMSKeyArn (\s a -> s { _sSMResourceDataSyncKMSKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-s3destination
ssmrdsS3Destination :: Lens' SSMResourceDataSync (Maybe SSMResourceDataSyncS3Destination)
ssmrdsS3Destination = lens _sSMResourceDataSyncS3Destination (\s a -> s { _sSMResourceDataSyncS3Destination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncformat
ssmrdsSyncFormat :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsSyncFormat = lens _sSMResourceDataSyncSyncFormat (\s a -> s { _sSMResourceDataSyncSyncFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncname
ssmrdsSyncName :: Lens' SSMResourceDataSync (Val Text)
ssmrdsSyncName = lens _sSMResourceDataSyncSyncName (\s a -> s { _sSMResourceDataSyncSyncName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncsource
ssmrdsSyncSource :: Lens' SSMResourceDataSync (Maybe SSMResourceDataSyncSyncSource)
ssmrdsSyncSource = lens _sSMResourceDataSyncSyncSource (\s a -> s { _sSMResourceDataSyncSyncSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-synctype
ssmrdsSyncType :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsSyncType = lens _sSMResourceDataSyncSyncType (\s a -> s { _sSMResourceDataSyncSyncType = a })
