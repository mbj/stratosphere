{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineFilter. See
-- 'ioTAnalyticsPipelineFilter' for a more convenient constructor.
data IoTAnalyticsPipelineFilter =
  IoTAnalyticsPipelineFilter
  { _ioTAnalyticsPipelineFilterFilter :: Maybe (Val Text)
  , _ioTAnalyticsPipelineFilterName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineFilterNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineFilter where
  toJSON IoTAnalyticsPipelineFilter{..} =
    object $
    catMaybes
    [ fmap (("Filter",) . toJSON) _ioTAnalyticsPipelineFilterFilter
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineFilterName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineFilterNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineFilter' containing required fields
-- as arguments.
ioTAnalyticsPipelineFilter
  :: IoTAnalyticsPipelineFilter
ioTAnalyticsPipelineFilter  =
  IoTAnalyticsPipelineFilter
  { _ioTAnalyticsPipelineFilterFilter = Nothing
  , _ioTAnalyticsPipelineFilterName = Nothing
  , _ioTAnalyticsPipelineFilterNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-filter
itapfFilter :: Lens' IoTAnalyticsPipelineFilter (Maybe (Val Text))
itapfFilter = lens _ioTAnalyticsPipelineFilterFilter (\s a -> s { _ioTAnalyticsPipelineFilterFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-name
itapfName :: Lens' IoTAnalyticsPipelineFilter (Maybe (Val Text))
itapfName = lens _ioTAnalyticsPipelineFilterName (\s a -> s { _ioTAnalyticsPipelineFilterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-filter.html#cfn-iotanalytics-pipeline-filter-next
itapfNext :: Lens' IoTAnalyticsPipelineFilter (Maybe (Val Text))
itapfNext = lens _ioTAnalyticsPipelineFilterNext (\s a -> s { _ioTAnalyticsPipelineFilterNext = a })
