{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html

module Stratosphere.Resources.SSMResourceDataSync where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMResourceDataSync. See
-- 'ssmResourceDataSync' for a more convenient constructor.
data SSMResourceDataSync =
  SSMResourceDataSync
  { _sSMResourceDataSyncBucketName :: Val Text
  , _sSMResourceDataSyncBucketPrefix :: Maybe (Val Text)
  , _sSMResourceDataSyncBucketRegion :: Val Text
  , _sSMResourceDataSyncKMSKeyArn :: Maybe (Val Text)
  , _sSMResourceDataSyncSyncFormat :: Val Text
  , _sSMResourceDataSyncSyncName :: Val Text
  } deriving (Show, Eq)

instance ToJSON SSMResourceDataSync where
  toJSON SSMResourceDataSync{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _sSMResourceDataSyncBucketName
    , fmap (("BucketPrefix",) . toJSON) _sSMResourceDataSyncBucketPrefix
    , (Just . ("BucketRegion",) . toJSON) _sSMResourceDataSyncBucketRegion
    , fmap (("KMSKeyArn",) . toJSON) _sSMResourceDataSyncKMSKeyArn
    , (Just . ("SyncFormat",) . toJSON) _sSMResourceDataSyncSyncFormat
    , (Just . ("SyncName",) . toJSON) _sSMResourceDataSyncSyncName
    ]

-- | Constructor for 'SSMResourceDataSync' containing required fields as
-- arguments.
ssmResourceDataSync
  :: Val Text -- ^ 'ssmrdsBucketName'
  -> Val Text -- ^ 'ssmrdsBucketRegion'
  -> Val Text -- ^ 'ssmrdsSyncFormat'
  -> Val Text -- ^ 'ssmrdsSyncName'
  -> SSMResourceDataSync
ssmResourceDataSync bucketNamearg bucketRegionarg syncFormatarg syncNamearg =
  SSMResourceDataSync
  { _sSMResourceDataSyncBucketName = bucketNamearg
  , _sSMResourceDataSyncBucketPrefix = Nothing
  , _sSMResourceDataSyncBucketRegion = bucketRegionarg
  , _sSMResourceDataSyncKMSKeyArn = Nothing
  , _sSMResourceDataSyncSyncFormat = syncFormatarg
  , _sSMResourceDataSyncSyncName = syncNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketname
ssmrdsBucketName :: Lens' SSMResourceDataSync (Val Text)
ssmrdsBucketName = lens _sSMResourceDataSyncBucketName (\s a -> s { _sSMResourceDataSyncBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketprefix
ssmrdsBucketPrefix :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsBucketPrefix = lens _sSMResourceDataSyncBucketPrefix (\s a -> s { _sSMResourceDataSyncBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketregion
ssmrdsBucketRegion :: Lens' SSMResourceDataSync (Val Text)
ssmrdsBucketRegion = lens _sSMResourceDataSyncBucketRegion (\s a -> s { _sSMResourceDataSyncBucketRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-kmskeyarn
ssmrdsKMSKeyArn :: Lens' SSMResourceDataSync (Maybe (Val Text))
ssmrdsKMSKeyArn = lens _sSMResourceDataSyncKMSKeyArn (\s a -> s { _sSMResourceDataSyncKMSKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncformat
ssmrdsSyncFormat :: Lens' SSMResourceDataSync (Val Text)
ssmrdsSyncFormat = lens _sSMResourceDataSyncSyncFormat (\s a -> s { _sSMResourceDataSyncSyncFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncname
ssmrdsSyncName :: Lens' SSMResourceDataSync (Val Text)
ssmrdsSyncName = lens _sSMResourceDataSyncSyncName (\s a -> s { _sSMResourceDataSyncSyncName = a })
