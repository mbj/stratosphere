{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatastoreDatastoreStorage where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatastoreCustomerManagedS3
import Stratosphere.ResourceProperties.IoTAnalyticsDatastoreServiceManagedS3

-- | Full data type definition for IoTAnalyticsDatastoreDatastoreStorage. See
-- 'ioTAnalyticsDatastoreDatastoreStorage' for a more convenient
-- constructor.
data IoTAnalyticsDatastoreDatastoreStorage =
  IoTAnalyticsDatastoreDatastoreStorage
  { _ioTAnalyticsDatastoreDatastoreStorageCustomerManagedS3 :: Maybe IoTAnalyticsDatastoreCustomerManagedS3
  , _ioTAnalyticsDatastoreDatastoreStorageServiceManagedS3 :: Maybe IoTAnalyticsDatastoreServiceManagedS3
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatastoreDatastoreStorage where
  toJSON IoTAnalyticsDatastoreDatastoreStorage{..} =
    object $
    catMaybes
    [ fmap (("CustomerManagedS3",) . toJSON) _ioTAnalyticsDatastoreDatastoreStorageCustomerManagedS3
    , fmap (("ServiceManagedS3",) . toJSON) _ioTAnalyticsDatastoreDatastoreStorageServiceManagedS3
    ]

-- | Constructor for 'IoTAnalyticsDatastoreDatastoreStorage' containing
-- required fields as arguments.
ioTAnalyticsDatastoreDatastoreStorage
  :: IoTAnalyticsDatastoreDatastoreStorage
ioTAnalyticsDatastoreDatastoreStorage  =
  IoTAnalyticsDatastoreDatastoreStorage
  { _ioTAnalyticsDatastoreDatastoreStorageCustomerManagedS3 = Nothing
  , _ioTAnalyticsDatastoreDatastoreStorageServiceManagedS3 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-customermanageds3
itaddsCustomerManagedS3 :: Lens' IoTAnalyticsDatastoreDatastoreStorage (Maybe IoTAnalyticsDatastoreCustomerManagedS3)
itaddsCustomerManagedS3 = lens _ioTAnalyticsDatastoreDatastoreStorageCustomerManagedS3 (\s a -> s { _ioTAnalyticsDatastoreDatastoreStorageCustomerManagedS3 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-datastorestorage.html#cfn-iotanalytics-datastore-datastorestorage-servicemanageds3
itaddsServiceManagedS3 :: Lens' IoTAnalyticsDatastoreDatastoreStorage (Maybe IoTAnalyticsDatastoreServiceManagedS3)
itaddsServiceManagedS3 = lens _ioTAnalyticsDatastoreDatastoreStorageServiceManagedS3 (\s a -> s { _ioTAnalyticsDatastoreDatastoreStorageServiceManagedS3 = a })
