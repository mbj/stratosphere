{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html

module Stratosphere.ResourceProperties.DataPipelinePipelinePipelineObject where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DataPipelinePipelineField

-- | Full data type definition for DataPipelinePipelinePipelineObject. See
-- | 'dataPipelinePipelinePipelineObject' for a more convenient constructor.
data DataPipelinePipelinePipelineObject =
  DataPipelinePipelinePipelineObject
  { _dataPipelinePipelinePipelineObjectFields :: [DataPipelinePipelineField]
  , _dataPipelinePipelinePipelineObjectId :: Val Text
  , _dataPipelinePipelinePipelineObjectName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON DataPipelinePipelinePipelineObject where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON DataPipelinePipelinePipelineObject where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'DataPipelinePipelinePipelineObject' containing required
-- | fields as arguments.
dataPipelinePipelinePipelineObject
  :: [DataPipelinePipelineField] -- ^ 'dpppioFields'
  -> Val Text -- ^ 'dpppioId'
  -> Val Text -- ^ 'dpppioName'
  -> DataPipelinePipelinePipelineObject
dataPipelinePipelinePipelineObject fieldsarg idarg namearg =
  DataPipelinePipelinePipelineObject
  { _dataPipelinePipelinePipelineObjectFields = fieldsarg
  , _dataPipelinePipelinePipelineObjectId = idarg
  , _dataPipelinePipelinePipelineObjectName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-fields
dpppioFields :: Lens' DataPipelinePipelinePipelineObject [DataPipelinePipelineField]
dpppioFields = lens _dataPipelinePipelinePipelineObjectFields (\s a -> s { _dataPipelinePipelinePipelineObjectFields = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-id
dpppioId :: Lens' DataPipelinePipelinePipelineObject (Val Text)
dpppioId = lens _dataPipelinePipelinePipelineObjectId (\s a -> s { _dataPipelinePipelinePipelineObjectId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-name
dpppioName :: Lens' DataPipelinePipelinePipelineObject (Val Text)
dpppioName = lens _dataPipelinePipelinePipelineObjectName (\s a -> s { _dataPipelinePipelinePipelineObjectName = a })
