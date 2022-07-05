{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html

module Stratosphere.Resources.IoTAnalyticsDatastore where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatastoreDatastoreStorage
import Stratosphere.ResourceProperties.IoTAnalyticsDatastoreRetentionPeriod
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTAnalyticsDatastore. See
-- 'ioTAnalyticsDatastore' for a more convenient constructor.
data IoTAnalyticsDatastore =
  IoTAnalyticsDatastore
  { _ioTAnalyticsDatastoreDatastoreName :: Maybe (Val Text)
  , _ioTAnalyticsDatastoreDatastoreStorage :: Maybe IoTAnalyticsDatastoreDatastoreStorage
  , _ioTAnalyticsDatastoreRetentionPeriod :: Maybe IoTAnalyticsDatastoreRetentionPeriod
  , _ioTAnalyticsDatastoreTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IoTAnalyticsDatastore where
  toResourceProperties IoTAnalyticsDatastore{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTAnalytics::Datastore"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DatastoreName",) . toJSON) _ioTAnalyticsDatastoreDatastoreName
        , fmap (("DatastoreStorage",) . toJSON) _ioTAnalyticsDatastoreDatastoreStorage
        , fmap (("RetentionPeriod",) . toJSON) _ioTAnalyticsDatastoreRetentionPeriod
        , fmap (("Tags",) . toJSON) _ioTAnalyticsDatastoreTags
        ]
    }

-- | Constructor for 'IoTAnalyticsDatastore' containing required fields as
-- arguments.
ioTAnalyticsDatastore
  :: IoTAnalyticsDatastore
ioTAnalyticsDatastore  =
  IoTAnalyticsDatastore
  { _ioTAnalyticsDatastoreDatastoreName = Nothing
  , _ioTAnalyticsDatastoreDatastoreStorage = Nothing
  , _ioTAnalyticsDatastoreRetentionPeriod = Nothing
  , _ioTAnalyticsDatastoreTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorename
itadstDatastoreName :: Lens' IoTAnalyticsDatastore (Maybe (Val Text))
itadstDatastoreName = lens _ioTAnalyticsDatastoreDatastoreName (\s a -> s { _ioTAnalyticsDatastoreDatastoreName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-datastorestorage
itadstDatastoreStorage :: Lens' IoTAnalyticsDatastore (Maybe IoTAnalyticsDatastoreDatastoreStorage)
itadstDatastoreStorage = lens _ioTAnalyticsDatastoreDatastoreStorage (\s a -> s { _ioTAnalyticsDatastoreDatastoreStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-retentionperiod
itadstRetentionPeriod :: Lens' IoTAnalyticsDatastore (Maybe IoTAnalyticsDatastoreRetentionPeriod)
itadstRetentionPeriod = lens _ioTAnalyticsDatastoreRetentionPeriod (\s a -> s { _ioTAnalyticsDatastoreRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-datastore.html#cfn-iotanalytics-datastore-tags
itadstTags :: Lens' IoTAnalyticsDatastore (Maybe [Tag])
itadstTags = lens _ioTAnalyticsDatastoreTags (\s a -> s { _ioTAnalyticsDatastoreTags = a })
