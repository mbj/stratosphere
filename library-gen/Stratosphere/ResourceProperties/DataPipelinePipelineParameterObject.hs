{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html

module Stratosphere.ResourceProperties.DataPipelinePipelineParameterObject where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterAttribute

-- | Full data type definition for DataPipelinePipelineParameterObject. See
-- 'dataPipelinePipelineParameterObject' for a more convenient constructor.
data DataPipelinePipelineParameterObject =
  DataPipelinePipelineParameterObject
  { _dataPipelinePipelineParameterObjectAttributes :: [DataPipelinePipelineParameterAttribute]
  , _dataPipelinePipelineParameterObjectId :: Val Text
  } deriving (Show, Eq)

instance ToJSON DataPipelinePipelineParameterObject where
  toJSON DataPipelinePipelineParameterObject{..} =
    object $
    catMaybes
    [ (Just . ("Attributes",) . toJSON) _dataPipelinePipelineParameterObjectAttributes
    , (Just . ("Id",) . toJSON) _dataPipelinePipelineParameterObjectId
    ]

-- | Constructor for 'DataPipelinePipelineParameterObject' containing required
-- fields as arguments.
dataPipelinePipelineParameterObject
  :: [DataPipelinePipelineParameterAttribute] -- ^ 'dpppaoAttributes'
  -> Val Text -- ^ 'dpppaoId'
  -> DataPipelinePipelineParameterObject
dataPipelinePipelineParameterObject attributesarg idarg =
  DataPipelinePipelineParameterObject
  { _dataPipelinePipelineParameterObjectAttributes = attributesarg
  , _dataPipelinePipelineParameterObjectId = idarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html#cfn-datapipeline-pipeline-parameterobjects-attributes
dpppaoAttributes :: Lens' DataPipelinePipelineParameterObject [DataPipelinePipelineParameterAttribute]
dpppaoAttributes = lens _dataPipelinePipelineParameterObjectAttributes (\s a -> s { _dataPipelinePipelineParameterObjectAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html#cfn-datapipeline-pipeline-parameterobjects-id
dpppaoId :: Lens' DataPipelinePipelineParameterObject (Val Text)
dpppaoId = lens _dataPipelinePipelineParameterObjectId (\s a -> s { _dataPipelinePipelineParameterObjectId = a })
