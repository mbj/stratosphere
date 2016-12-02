{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html

module Stratosphere.ResourceProperties.DataPipelinePipelineParameterValue where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DataPipelinePipelineParameterValue. See
-- | 'dataPipelinePipelineParameterValue' for a more convenient constructor.
data DataPipelinePipelineParameterValue =
  DataPipelinePipelineParameterValue
  { _dataPipelinePipelineParameterValueId :: Val Text
  , _dataPipelinePipelineParameterValueStringValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON DataPipelinePipelineParameterValue where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON DataPipelinePipelineParameterValue where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'DataPipelinePipelineParameterValue' containing required
-- | fields as arguments.
dataPipelinePipelineParameterValue
  :: Val Text -- ^ 'dpppvId'
  -> Val Text -- ^ 'dpppvStringValue'
  -> DataPipelinePipelineParameterValue
dataPipelinePipelineParameterValue idarg stringValuearg =
  DataPipelinePipelineParameterValue
  { _dataPipelinePipelineParameterValueId = idarg
  , _dataPipelinePipelineParameterValueStringValue = stringValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html#cfn-datapipeline-pipeline-parametervalues-id
dpppvId :: Lens' DataPipelinePipelineParameterValue (Val Text)
dpppvId = lens _dataPipelinePipelineParameterValueId (\s a -> s { _dataPipelinePipelineParameterValueId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html#cfn-datapipeline-pipeline-parametervalues-stringvalue
dpppvStringValue :: Lens' DataPipelinePipelineParameterValue (Val Text)
dpppvStringValue = lens _dataPipelinePipelineParameterValueStringValue (\s a -> s { _dataPipelinePipelineParameterValueStringValue = a })
