
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html

module Stratosphere.ResourceProperties.SSMResourceDataSyncS3Destination where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SSMResourceDataSyncS3Destination. See
-- 'ssmResourceDataSyncS3Destination' for a more convenient constructor.
data SSMResourceDataSyncS3Destination =
  SSMResourceDataSyncS3Destination
  { _sSMResourceDataSyncS3DestinationBucketName :: Val Text
  , _sSMResourceDataSyncS3DestinationBucketPrefix :: Maybe (Val Text)
  , _sSMResourceDataSyncS3DestinationBucketRegion :: Val Text
  , _sSMResourceDataSyncS3DestinationKMSKeyArn :: Maybe (Val Text)
  , _sSMResourceDataSyncS3DestinationSyncFormat :: Val Text
  } deriving (Show, Eq)

instance ToJSON SSMResourceDataSyncS3Destination where
  toJSON SSMResourceDataSyncS3Destination{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _sSMResourceDataSyncS3DestinationBucketName
    , fmap (("BucketPrefix",) . toJSON) _sSMResourceDataSyncS3DestinationBucketPrefix
    , (Just . ("BucketRegion",) . toJSON) _sSMResourceDataSyncS3DestinationBucketRegion
    , fmap (("KMSKeyArn",) . toJSON) _sSMResourceDataSyncS3DestinationKMSKeyArn
    , (Just . ("SyncFormat",) . toJSON) _sSMResourceDataSyncS3DestinationSyncFormat
    ]

-- | Constructor for 'SSMResourceDataSyncS3Destination' containing required
-- fields as arguments.
ssmResourceDataSyncS3Destination
  :: Val Text -- ^ 'ssmrdssdBucketName'
  -> Val Text -- ^ 'ssmrdssdBucketRegion'
  -> Val Text -- ^ 'ssmrdssdSyncFormat'
  -> SSMResourceDataSyncS3Destination
ssmResourceDataSyncS3Destination bucketNamearg bucketRegionarg syncFormatarg =
  SSMResourceDataSyncS3Destination
  { _sSMResourceDataSyncS3DestinationBucketName = bucketNamearg
  , _sSMResourceDataSyncS3DestinationBucketPrefix = Nothing
  , _sSMResourceDataSyncS3DestinationBucketRegion = bucketRegionarg
  , _sSMResourceDataSyncS3DestinationKMSKeyArn = Nothing
  , _sSMResourceDataSyncS3DestinationSyncFormat = syncFormatarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html#cfn-ssm-resourcedatasync-s3destination-bucketname
ssmrdssdBucketName :: Lens' SSMResourceDataSyncS3Destination (Val Text)
ssmrdssdBucketName = lens _sSMResourceDataSyncS3DestinationBucketName (\s a -> s { _sSMResourceDataSyncS3DestinationBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html#cfn-ssm-resourcedatasync-s3destination-bucketprefix
ssmrdssdBucketPrefix :: Lens' SSMResourceDataSyncS3Destination (Maybe (Val Text))
ssmrdssdBucketPrefix = lens _sSMResourceDataSyncS3DestinationBucketPrefix (\s a -> s { _sSMResourceDataSyncS3DestinationBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html#cfn-ssm-resourcedatasync-s3destination-bucketregion
ssmrdssdBucketRegion :: Lens' SSMResourceDataSyncS3Destination (Val Text)
ssmrdssdBucketRegion = lens _sSMResourceDataSyncS3DestinationBucketRegion (\s a -> s { _sSMResourceDataSyncS3DestinationBucketRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html#cfn-ssm-resourcedatasync-s3destination-kmskeyarn
ssmrdssdKMSKeyArn :: Lens' SSMResourceDataSyncS3Destination (Maybe (Val Text))
ssmrdssdKMSKeyArn = lens _sSMResourceDataSyncS3DestinationKMSKeyArn (\s a -> s { _sSMResourceDataSyncS3DestinationKMSKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-s3destination.html#cfn-ssm-resourcedatasync-s3destination-syncformat
ssmrdssdSyncFormat :: Lens' SSMResourceDataSyncS3Destination (Val Text)
ssmrdssdSyncFormat = lens _sSMResourceDataSyncS3DestinationSyncFormat (\s a -> s { _sSMResourceDataSyncS3DestinationSyncFormat = a })
