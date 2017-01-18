{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html

module Stratosphere.ResourceProperties.DataPipelinePipelinePipelineTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DataPipelinePipelinePipelineTag. See
-- | 'dataPipelinePipelinePipelineTag' for a more convenient constructor.
data DataPipelinePipelinePipelineTag =
  DataPipelinePipelinePipelineTag
  { _dataPipelinePipelinePipelineTagKey :: Val Text
  , _dataPipelinePipelinePipelineTagValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON DataPipelinePipelinePipelineTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

instance FromJSON DataPipelinePipelinePipelineTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

-- | Constructor for 'DataPipelinePipelinePipelineTag' containing required
-- | fields as arguments.
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
