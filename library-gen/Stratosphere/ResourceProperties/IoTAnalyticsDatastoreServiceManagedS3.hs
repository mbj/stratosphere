
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-servicemanageds3.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatastoreServiceManagedS3 where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatastoreServiceManagedS3. See
-- 'ioTAnalyticsDatastoreServiceManagedS3' for a more convenient
-- constructor.
data IoTAnalyticsDatastoreServiceManagedS3 =
  IoTAnalyticsDatastoreServiceManagedS3
  { 
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatastoreServiceManagedS3 where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'IoTAnalyticsDatastoreServiceManagedS3' containing
-- required fields as arguments.
ioTAnalyticsDatastoreServiceManagedS3
  :: IoTAnalyticsDatastoreServiceManagedS3
ioTAnalyticsDatastoreServiceManagedS3  =
  IoTAnalyticsDatastoreServiceManagedS3
  { 
  }


