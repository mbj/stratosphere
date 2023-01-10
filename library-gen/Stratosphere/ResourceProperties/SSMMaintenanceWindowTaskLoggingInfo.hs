
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html

module Stratosphere.ResourceProperties.SSMMaintenanceWindowTaskLoggingInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for SSMMaintenanceWindowTaskLoggingInfo. See
-- 'ssmMaintenanceWindowTaskLoggingInfo' for a more convenient constructor.
data SSMMaintenanceWindowTaskLoggingInfo =
  SSMMaintenanceWindowTaskLoggingInfo
  { _sSMMaintenanceWindowTaskLoggingInfoRegion :: Val Text
  , _sSMMaintenanceWindowTaskLoggingInfoS3Bucket :: Val Text
  , _sSMMaintenanceWindowTaskLoggingInfoS3Prefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SSMMaintenanceWindowTaskLoggingInfo where
  toJSON SSMMaintenanceWindowTaskLoggingInfo{..} =
    object $
    catMaybes
    [ (Just . ("Region",) . toJSON) _sSMMaintenanceWindowTaskLoggingInfoRegion
    , (Just . ("S3Bucket",) . toJSON) _sSMMaintenanceWindowTaskLoggingInfoS3Bucket
    , fmap (("S3Prefix",) . toJSON) _sSMMaintenanceWindowTaskLoggingInfoS3Prefix
    ]

-- | Constructor for 'SSMMaintenanceWindowTaskLoggingInfo' containing required
-- fields as arguments.
ssmMaintenanceWindowTaskLoggingInfo
  :: Val Text -- ^ 'ssmmwtliRegion'
  -> Val Text -- ^ 'ssmmwtliS3Bucket'
  -> SSMMaintenanceWindowTaskLoggingInfo
ssmMaintenanceWindowTaskLoggingInfo regionarg s3Bucketarg =
  SSMMaintenanceWindowTaskLoggingInfo
  { _sSMMaintenanceWindowTaskLoggingInfoRegion = regionarg
  , _sSMMaintenanceWindowTaskLoggingInfoS3Bucket = s3Bucketarg
  , _sSMMaintenanceWindowTaskLoggingInfoS3Prefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-region
ssmmwtliRegion :: Lens' SSMMaintenanceWindowTaskLoggingInfo (Val Text)
ssmmwtliRegion = lens _sSMMaintenanceWindowTaskLoggingInfoRegion (\s a -> s { _sSMMaintenanceWindowTaskLoggingInfoRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3bucket
ssmmwtliS3Bucket :: Lens' SSMMaintenanceWindowTaskLoggingInfo (Val Text)
ssmmwtliS3Bucket = lens _sSMMaintenanceWindowTaskLoggingInfoS3Bucket (\s a -> s { _sSMMaintenanceWindowTaskLoggingInfoS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3prefix
ssmmwtliS3Prefix :: Lens' SSMMaintenanceWindowTaskLoggingInfo (Maybe (Val Text))
ssmmwtliS3Prefix = lens _sSMMaintenanceWindowTaskLoggingInfoS3Prefix (\s a -> s { _sSMMaintenanceWindowTaskLoggingInfoS3Prefix = a })
