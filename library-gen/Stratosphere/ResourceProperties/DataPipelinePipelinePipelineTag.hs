{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html

module Stratosphere.ResourceProperties.DataPipelinePipelinePipelineTag where

import Stratosphere.ResourceImports


-- | Full data type definition for DataPipelinePipelinePipelineTag. See
-- 'dataPipelinePipelinePipelineTag' for a more convenient constructor.
data DataPipelinePipelinePipelineTag =
  DataPipelinePipelinePipelineTag
  { _dataPipelinePipelinePipelineTagKey :: Val Text
  , _dataPipelinePipelinePipelineTagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON DataPipelinePipelinePipelineTag where
  toJSON DataPipelinePipelinePipelineTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _dataPipelinePipelinePipelineTagKey
    , (Just . ("Value",) . toJSON) _dataPipelinePipelinePipelineTagValue
    ]

instance FromJSON DataPipelinePipelinePipelineTag where
  parseJSON (Object obj) =
    DataPipelinePipelinePipelineTag <$>
      (obj .: "Key") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'DataPipelinePipelinePipelineTag' containing required
-- fields as arguments.
dataPipelinePipelinePipelineTag
  :: Val Text -- ^ 'dppptKey'
  -> Val Text -- ^ 'dppptValue'
  -> DataPipelinePipelinePipelineTag
dataPipelinePipelinePipelineTag keyarg valuearg =
  DataPipelinePipelinePipelineTag
  { _dataPipelinePipelinePipelineTagKey = keyarg
  , _dataPipelinePipelinePipelineTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-key
dppptKey :: Lens' DataPipelinePipelinePipelineTag (Val Text)
dppptKey = lens _dataPipelinePipelinePipelineTagKey (\s a -> s { _dataPipelinePipelinePipelineTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-value
dppptValue :: Lens' DataPipelinePipelinePipelineTag (Val Text)
dppptValue = lens _dataPipelinePipelinePipelineTagValue (\s a -> s { _dataPipelinePipelinePipelineTagValue = a })
