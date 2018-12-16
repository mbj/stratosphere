{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetQueryAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetFilter

-- | Full data type definition for IoTAnalyticsDatasetQueryAction. See
-- 'ioTAnalyticsDatasetQueryAction' for a more convenient constructor.
data IoTAnalyticsDatasetQueryAction =
  IoTAnalyticsDatasetQueryAction
  { _ioTAnalyticsDatasetQueryActionFilters :: Maybe [IoTAnalyticsDatasetFilter]
  , _ioTAnalyticsDatasetQueryActionSqlQuery :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetQueryAction where
  toJSON IoTAnalyticsDatasetQueryAction{..} =
    object $
    catMaybes
    [ fmap (("Filters",) . toJSON) _ioTAnalyticsDatasetQueryActionFilters
    , (Just . ("SqlQuery",) . toJSON) _ioTAnalyticsDatasetQueryActionSqlQuery
    ]

instance FromJSON IoTAnalyticsDatasetQueryAction where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetQueryAction <$>
      (obj .:? "Filters") <*>
      (obj .: "SqlQuery")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetQueryAction' containing required
-- fields as arguments.
ioTAnalyticsDatasetQueryAction
  :: Val Text -- ^ 'itadqaSqlQuery'
  -> IoTAnalyticsDatasetQueryAction
ioTAnalyticsDatasetQueryAction sqlQueryarg =
  IoTAnalyticsDatasetQueryAction
  { _ioTAnalyticsDatasetQueryActionFilters = Nothing
  , _ioTAnalyticsDatasetQueryActionSqlQuery = sqlQueryarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-filters
itadqaFilters :: Lens' IoTAnalyticsDatasetQueryAction (Maybe [IoTAnalyticsDatasetFilter])
itadqaFilters = lens _ioTAnalyticsDatasetQueryActionFilters (\s a -> s { _ioTAnalyticsDatasetQueryActionFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-queryaction.html#cfn-iotanalytics-dataset-queryaction-sqlquery
itadqaSqlQuery :: Lens' IoTAnalyticsDatasetQueryAction (Val Text)
itadqaSqlQuery = lens _ioTAnalyticsDatasetQueryActionSqlQuery (\s a -> s { _ioTAnalyticsDatasetQueryActionSqlQuery = a })
