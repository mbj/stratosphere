
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html

module Stratosphere.ResourceProperties.IoTAnalyticsChannelCustomerManagedS3 where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsChannelCustomerManagedS3. See
-- 'ioTAnalyticsChannelCustomerManagedS3' for a more convenient constructor.
data IoTAnalyticsChannelCustomerManagedS3 =
  IoTAnalyticsChannelCustomerManagedS3
  { _ioTAnalyticsChannelCustomerManagedS3Bucket :: Val Text
  , _ioTAnalyticsChannelCustomerManagedS3KeyPrefix :: Maybe (Val Text)
  , _ioTAnalyticsChannelCustomerManagedS3RoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsChannelCustomerManagedS3 where
  toJSON IoTAnalyticsChannelCustomerManagedS3{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _ioTAnalyticsChannelCustomerManagedS3Bucket
    , fmap (("KeyPrefix",) . toJSON) _ioTAnalyticsChannelCustomerManagedS3KeyPrefix
    , (Just . ("RoleArn",) . toJSON) _ioTAnalyticsChannelCustomerManagedS3RoleArn
    ]

-- | Constructor for 'IoTAnalyticsChannelCustomerManagedS3' containing
-- required fields as arguments.
ioTAnalyticsChannelCustomerManagedS3
  :: Val Text -- ^ 'itaccmsBucket'
  -> Val Text -- ^ 'itaccmsRoleArn'
  -> IoTAnalyticsChannelCustomerManagedS3
ioTAnalyticsChannelCustomerManagedS3 bucketarg roleArnarg =
  IoTAnalyticsChannelCustomerManagedS3
  { _ioTAnalyticsChannelCustomerManagedS3Bucket = bucketarg
  , _ioTAnalyticsChannelCustomerManagedS3KeyPrefix = Nothing
  , _ioTAnalyticsChannelCustomerManagedS3RoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-bucket
itaccmsBucket :: Lens' IoTAnalyticsChannelCustomerManagedS3 (Val Text)
itaccmsBucket = lens _ioTAnalyticsChannelCustomerManagedS3Bucket (\s a -> s { _ioTAnalyticsChannelCustomerManagedS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-keyprefix
itaccmsKeyPrefix :: Lens' IoTAnalyticsChannelCustomerManagedS3 (Maybe (Val Text))
itaccmsKeyPrefix = lens _ioTAnalyticsChannelCustomerManagedS3KeyPrefix (\s a -> s { _ioTAnalyticsChannelCustomerManagedS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-customermanageds3.html#cfn-iotanalytics-channel-customermanageds3-rolearn
itaccmsRoleArn :: Lens' IoTAnalyticsChannelCustomerManagedS3 (Val Text)
itaccmsRoleArn = lens _ioTAnalyticsChannelCustomerManagedS3RoleArn (\s a -> s { _ioTAnalyticsChannelCustomerManagedS3RoleArn = a })
