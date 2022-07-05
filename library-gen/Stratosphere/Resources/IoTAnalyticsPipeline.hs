{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html

module Stratosphere.Resources.IoTAnalyticsPipeline where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsPipelineActivity
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTAnalyticsPipeline. See
-- 'ioTAnalyticsPipeline' for a more convenient constructor.
data IoTAnalyticsPipeline =
  IoTAnalyticsPipeline
  { _ioTAnalyticsPipelinePipelineActivities :: [IoTAnalyticsPipelineActivity]
  , _ioTAnalyticsPipelinePipelineName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IoTAnalyticsPipeline where
  toResourceProperties IoTAnalyticsPipeline{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTAnalytics::Pipeline"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("PipelineActivities",) . toJSON) _ioTAnalyticsPipelinePipelineActivities
        , fmap (("PipelineName",) . toJSON) _ioTAnalyticsPipelinePipelineName
        , fmap (("Tags",) . toJSON) _ioTAnalyticsPipelineTags
        ]
    }

-- | Constructor for 'IoTAnalyticsPipeline' containing required fields as
-- arguments.
ioTAnalyticsPipeline
  :: [IoTAnalyticsPipelineActivity] -- ^ 'itapPipelineActivities'
  -> IoTAnalyticsPipeline
ioTAnalyticsPipeline pipelineActivitiesarg =
  IoTAnalyticsPipeline
  { _ioTAnalyticsPipelinePipelineActivities = pipelineActivitiesarg
  , _ioTAnalyticsPipelinePipelineName = Nothing
  , _ioTAnalyticsPipelineTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelineactivities
itapPipelineActivities :: Lens' IoTAnalyticsPipeline [IoTAnalyticsPipelineActivity]
itapPipelineActivities = lens _ioTAnalyticsPipelinePipelineActivities (\s a -> s { _ioTAnalyticsPipelinePipelineActivities = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-pipelinename
itapPipelineName :: Lens' IoTAnalyticsPipeline (Maybe (Val Text))
itapPipelineName = lens _ioTAnalyticsPipelinePipelineName (\s a -> s { _ioTAnalyticsPipelinePipelineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-pipeline.html#cfn-iotanalytics-pipeline-tags
itapTags :: Lens' IoTAnalyticsPipeline (Maybe [Tag])
itapTags = lens _ioTAnalyticsPipelineTags (\s a -> s { _ioTAnalyticsPipelineTags = a })
