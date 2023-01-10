
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatastoreCustomerManagedS3 where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatastoreCustomerManagedS3. See
-- 'ioTAnalyticsDatastoreCustomerManagedS3' for a more convenient
-- constructor.
data IoTAnalyticsDatastoreCustomerManagedS3 =
  IoTAnalyticsDatastoreCustomerManagedS3
  { _ioTAnalyticsDatastoreCustomerManagedS3Bucket :: Val Text
  , _ioTAnalyticsDatastoreCustomerManagedS3KeyPrefix :: Maybe (Val Text)
  , _ioTAnalyticsDatastoreCustomerManagedS3RoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatastoreCustomerManagedS3 where
  toJSON IoTAnalyticsDatastoreCustomerManagedS3{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _ioTAnalyticsDatastoreCustomerManagedS3Bucket
    , fmap (("KeyPrefix",) . toJSON) _ioTAnalyticsDatastoreCustomerManagedS3KeyPrefix
    , (Just . ("RoleArn",) . toJSON) _ioTAnalyticsDatastoreCustomerManagedS3RoleArn
    ]

-- | Constructor for 'IoTAnalyticsDatastoreCustomerManagedS3' containing
-- required fields as arguments.
ioTAnalyticsDatastoreCustomerManagedS3
  :: Val Text -- ^ 'itadcmsBucket'
  -> Val Text -- ^ 'itadcmsRoleArn'
  -> IoTAnalyticsDatastoreCustomerManagedS3
ioTAnalyticsDatastoreCustomerManagedS3 bucketarg roleArnarg =
  IoTAnalyticsDatastoreCustomerManagedS3
  { _ioTAnalyticsDatastoreCustomerManagedS3Bucket = bucketarg
  , _ioTAnalyticsDatastoreCustomerManagedS3KeyPrefix = Nothing
  , _ioTAnalyticsDatastoreCustomerManagedS3RoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-bucket
itadcmsBucket :: Lens' IoTAnalyticsDatastoreCustomerManagedS3 (Val Text)
itadcmsBucket = lens _ioTAnalyticsDatastoreCustomerManagedS3Bucket (\s a -> s { _ioTAnalyticsDatastoreCustomerManagedS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-keyprefix
itadcmsKeyPrefix :: Lens' IoTAnalyticsDatastoreCustomerManagedS3 (Maybe (Val Text))
itadcmsKeyPrefix = lens _ioTAnalyticsDatastoreCustomerManagedS3KeyPrefix (\s a -> s { _ioTAnalyticsDatastoreCustomerManagedS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-customermanageds3.html#cfn-iotanalytics-datastore-customermanageds3-rolearn
itadcmsRoleArn :: Lens' IoTAnalyticsDatastoreCustomerManagedS3 (Val Text)
itadcmsRoleArn = lens _ioTAnalyticsDatastoreCustomerManagedS3RoleArn (\s a -> s { _ioTAnalyticsDatastoreCustomerManagedS3RoleArn = a })
