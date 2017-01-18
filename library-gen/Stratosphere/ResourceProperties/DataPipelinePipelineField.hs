{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html

module Stratosphere.ResourceProperties.DataPipelinePipelineField where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for DataPipelinePipelineField. See
-- | 'dataPipelinePipelineField' for a more convenient constructor.
data DataPipelinePipelineField =
  DataPipelinePipelineField
  { _dataPipelinePipelineFieldKey :: Val Text
  , _dataPipelinePipelineFieldRefValue :: Maybe (Val Text)
  , _dataPipelinePipelineFieldStringValue :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON DataPipelinePipelineField where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON DataPipelinePipelineField where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'DataPipelinePipelineField' containing required fields as
-- | arguments.
dataPipelinePipelineField
  :: Val Text -- ^ 'dppfKey'
  -> DataPipelinePipelineField
dataPipelinePipelineField keyarg =
  DataPipelinePipelineField
  { _dataPipelinePipelineFieldKey = keyarg
  , _dataPipelinePipelineFieldRefValue = Nothing
  , _dataPipelinePipelineFieldStringValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-key
dppfKey :: Lens' DataPipelinePipelineField (Val Text)
dppfKey = lens _dataPipelinePipelineFieldKey (\s a -> s { _dataPipelinePipelineFieldKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-refvalue
dppfRefValue :: Lens' DataPipelinePipelineField (Maybe (Val Text))
dppfRefValue = lens _dataPipelinePipelineFieldRefValue (\s a -> s { _dataPipelinePipelineFieldRefValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-stringvalue
dppfStringValue :: Lens' DataPipelinePipelineField (Maybe (Val Text))
dppfStringValue = lens _dataPipelinePipelineFieldStringValue (\s a -> s { _dataPipelinePipelineFieldStringValue = a })
