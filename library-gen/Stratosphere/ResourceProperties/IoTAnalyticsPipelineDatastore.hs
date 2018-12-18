{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineDatastore where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineDatastore. See
-- 'ioTAnalyticsPipelineDatastore' for a more convenient constructor.
data IoTAnalyticsPipelineDatastore =
  IoTAnalyticsPipelineDatastore
  { _ioTAnalyticsPipelineDatastoreDatastoreName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineDatastoreName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineDatastore where
  toJSON IoTAnalyticsPipelineDatastore{..} =
    object $
    catMaybes
    [ fmap (("DatastoreName",) . toJSON) _ioTAnalyticsPipelineDatastoreDatastoreName
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineDatastoreName
    ]

instance FromJSON IoTAnalyticsPipelineDatastore where
  parseJSON (Object obj) =
    IoTAnalyticsPipelineDatastore <$>
      (obj .:? "DatastoreName") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsPipelineDatastore' containing required
-- fields as arguments.
ioTAnalyticsPipelineDatastore
  :: IoTAnalyticsPipelineDatastore
ioTAnalyticsPipelineDatastore  =
  IoTAnalyticsPipelineDatastore
  { _ioTAnalyticsPipelineDatastoreDatastoreName = Nothing
  , _ioTAnalyticsPipelineDatastoreName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-datastorename
itapdDatastoreName :: Lens' IoTAnalyticsPipelineDatastore (Maybe (Val Text))
itapdDatastoreName = lens _ioTAnalyticsPipelineDatastoreDatastoreName (\s a -> s { _ioTAnalyticsPipelineDatastoreDatastoreName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-datastore.html#cfn-iotanalytics-pipeline-datastore-name
itapdName :: Lens' IoTAnalyticsPipelineDatastore (Maybe (Val Text))
itapdName = lens _ioTAnalyticsPipelineDatastoreName (\s a -> s { _ioTAnalyticsPipelineDatastoreName = a })
