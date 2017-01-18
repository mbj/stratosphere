{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html

module Stratosphere.ResourceProperties.DataPipelinePipelineParameterAttribute where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DataPipelinePipelineParameterAttribute. See
-- | 'dataPipelinePipelineParameterAttribute' for a more convenient
-- | constructor.
data DataPipelinePipelineParameterAttribute =
  DataPipelinePipelineParameterAttribute
  { _dataPipelinePipelineParameterAttributeKey :: Val Text
  , _dataPipelinePipelineParameterAttributeStringValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON DataPipelinePipelineParameterAttribute where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

instance FromJSON DataPipelinePipelineParameterAttribute where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 39, omitNothingFields = True }

-- | Constructor for 'DataPipelinePipelineParameterAttribute' containing
-- | required fields as arguments.
dataPipelinePipelineParameterAttribute
  :: Val Text -- ^ 'dpppaKey'
  -> Val Text -- ^ 'dpppaStringValue'
  -> DataPipelinePipelineParameterAttribute
dataPipelinePipelineParameterAttribute keyarg stringValuearg =
  DataPipelinePipelineParameterAttribute
  { _dataPipelinePipelineParameterAttributeKey = keyarg
  , _dataPipelinePipelineParameterAttributeStringValue = stringValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html#cfn-datapipeline-pipeline-parameterobjects-attribtues-key
dpppaKey :: Lens' DataPipelinePipelineParameterAttribute (Val Text)
dpppaKey = lens _dataPipelinePipelineParameterAttributeKey (\s a -> s { _dataPipelinePipelineParameterAttributeKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html#cfn-datapipeline-pipeline-parameterobjects-attribtues-stringvalue
dpppaStringValue :: Lens' DataPipelinePipelineParameterAttribute (Val Text)
dpppaStringValue = lens _dataPipelinePipelineParameterAttributeStringValue (\s a -> s { _dataPipelinePipelineParameterAttributeStringValue = a })
