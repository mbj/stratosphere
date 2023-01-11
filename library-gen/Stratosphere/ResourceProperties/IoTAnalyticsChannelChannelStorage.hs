
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html

module Stratosphere.ResourceProperties.IoTAnalyticsChannelChannelStorage where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsChannelCustomerManagedS3
import Stratosphere.ResourceProperties.IoTAnalyticsChannelServiceManagedS3

-- | Full data type definition for IoTAnalyticsChannelChannelStorage. See
-- 'ioTAnalyticsChannelChannelStorage' for a more convenient constructor.
data IoTAnalyticsChannelChannelStorage =
  IoTAnalyticsChannelChannelStorage
  { _ioTAnalyticsChannelChannelStorageCustomerManagedS3 :: Maybe IoTAnalyticsChannelCustomerManagedS3
  , _ioTAnalyticsChannelChannelStorageServiceManagedS3 :: Maybe IoTAnalyticsChannelServiceManagedS3
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsChannelChannelStorage where
  toJSON IoTAnalyticsChannelChannelStorage{..} =
    object $
    catMaybes
    [ fmap (("CustomerManagedS3",) . toJSON) _ioTAnalyticsChannelChannelStorageCustomerManagedS3
    , fmap (("ServiceManagedS3",) . toJSON) _ioTAnalyticsChannelChannelStorageServiceManagedS3
    ]

-- | Constructor for 'IoTAnalyticsChannelChannelStorage' containing required
-- fields as arguments.
ioTAnalyticsChannelChannelStorage
  :: IoTAnalyticsChannelChannelStorage
ioTAnalyticsChannelChannelStorage  =
  IoTAnalyticsChannelChannelStorage
  { _ioTAnalyticsChannelChannelStorageCustomerManagedS3 = Nothing
  , _ioTAnalyticsChannelChannelStorageServiceManagedS3 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-customermanageds3
itaccsCustomerManagedS3 :: Lens' IoTAnalyticsChannelChannelStorage (Maybe IoTAnalyticsChannelCustomerManagedS3)
itaccsCustomerManagedS3 = lens _ioTAnalyticsChannelChannelStorageCustomerManagedS3 (\s a -> s { _ioTAnalyticsChannelChannelStorageCustomerManagedS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-channelstorage.html#cfn-iotanalytics-channel-channelstorage-servicemanageds3
itaccsServiceManagedS3 :: Lens' IoTAnalyticsChannelChannelStorage (Maybe IoTAnalyticsChannelServiceManagedS3)
itaccsServiceManagedS3 = lens _ioTAnalyticsChannelChannelStorageServiceManagedS3 (\s a -> s { _ioTAnalyticsChannelChannelStorageServiceManagedS3 = a })
