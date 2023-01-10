
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-servicemanageds3.html

module Stratosphere.ResourceProperties.IoTAnalyticsChannelServiceManagedS3 where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsChannelServiceManagedS3. See
-- 'ioTAnalyticsChannelServiceManagedS3' for a more convenient constructor.
data IoTAnalyticsChannelServiceManagedS3 =
  IoTAnalyticsChannelServiceManagedS3
  { 
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsChannelServiceManagedS3 where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'IoTAnalyticsChannelServiceManagedS3' containing required
-- fields as arguments.
ioTAnalyticsChannelServiceManagedS3
  :: IoTAnalyticsChannelServiceManagedS3
ioTAnalyticsChannelServiceManagedS3  =
  IoTAnalyticsChannelServiceManagedS3
  { 
  }


