{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetContainerAction
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetQueryAction

-- | Full data type definition for IoTAnalyticsDatasetAction. See
-- 'ioTAnalyticsDatasetAction' for a more convenient constructor.
data IoTAnalyticsDatasetAction =
  IoTAnalyticsDatasetAction
  { _ioTAnalyticsDatasetActionActionName :: Val Text
  , _ioTAnalyticsDatasetActionContainerAction :: Maybe IoTAnalyticsDatasetContainerAction
  , _ioTAnalyticsDatasetActionQueryAction :: Maybe IoTAnalyticsDatasetQueryAction
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetAction where
  toJSON IoTAnalyticsDatasetAction{..} =
    object $
    catMaybes
    [ (Just . ("ActionName",) . toJSON) _ioTAnalyticsDatasetActionActionName
    , fmap (("ContainerAction",) . toJSON) _ioTAnalyticsDatasetActionContainerAction
    , fmap (("QueryAction",) . toJSON) _ioTAnalyticsDatasetActionQueryAction
    ]

instance FromJSON IoTAnalyticsDatasetAction where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetAction <$>
      (obj .: "ActionName") <*>
      (obj .:? "ContainerAction") <*>
      (obj .:? "QueryAction")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetAction' containing required fields as
-- arguments.
ioTAnalyticsDatasetAction
  :: Val Text -- ^ 'itadaActionName'
  -> IoTAnalyticsDatasetAction
ioTAnalyticsDatasetAction actionNamearg =
  IoTAnalyticsDatasetAction
  { _ioTAnalyticsDatasetActionActionName = actionNamearg
  , _ioTAnalyticsDatasetActionContainerAction = Nothing
  , _ioTAnalyticsDatasetActionQueryAction = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-actionname
itadaActionName :: Lens' IoTAnalyticsDatasetAction (Val Text)
itadaActionName = lens _ioTAnalyticsDatasetActionActionName (\s a -> s { _ioTAnalyticsDatasetActionActionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-containeraction
itadaContainerAction :: Lens' IoTAnalyticsDatasetAction (Maybe IoTAnalyticsDatasetContainerAction)
itadaContainerAction = lens _ioTAnalyticsDatasetActionContainerAction (\s a -> s { _ioTAnalyticsDatasetActionContainerAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-action.html#cfn-iotanalytics-dataset-action-queryaction
itadaQueryAction :: Lens' IoTAnalyticsDatasetAction (Maybe IoTAnalyticsDatasetQueryAction)
itadaQueryAction = lens _ioTAnalyticsDatasetActionQueryAction (\s a -> s { _ioTAnalyticsDatasetActionQueryAction = a })
