{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-aggregationconfig.html

module Stratosphere.ResourceProperties.AppFlowFlowAggregationConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowAggregationConfig. See
-- 'appFlowFlowAggregationConfig' for a more convenient constructor.
data AppFlowFlowAggregationConfig =
  AppFlowFlowAggregationConfig
  { _appFlowFlowAggregationConfigAggregationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowAggregationConfig where
  toJSON AppFlowFlowAggregationConfig{..} =
    object $
    catMaybes
    [ fmap (("AggregationType",) . toJSON) _appFlowFlowAggregationConfigAggregationType
    ]

-- | Constructor for 'AppFlowFlowAggregationConfig' containing required fields
-- as arguments.
appFlowFlowAggregationConfig
  :: AppFlowFlowAggregationConfig
appFlowFlowAggregationConfig  =
  AppFlowFlowAggregationConfig
  { _appFlowFlowAggregationConfigAggregationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-aggregationconfig.html#cfn-appflow-flow-aggregationconfig-aggregationtype
affacAggregationType :: Lens' AppFlowFlowAggregationConfig (Maybe (Val Text))
affacAggregationType = lens _appFlowFlowAggregationConfigAggregationType (\s a -> s { _appFlowFlowAggregationConfigAggregationType = a })
