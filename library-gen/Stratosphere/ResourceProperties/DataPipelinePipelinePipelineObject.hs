{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html

module Stratosphere.ResourceProperties.DataPipelinePipelinePipelineObject where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.DataPipelinePipelineField

-- | Full data type definition for DataPipelinePipelinePipelineObject. See
-- 'dataPipelinePipelinePipelineObject' for a more convenient constructor.
data DataPipelinePipelinePipelineObject =
  DataPipelinePipelinePipelineObject
  { _dataPipelinePipelinePipelineObjectFields :: [DataPipelinePipelineField]
  , _dataPipelinePipelinePipelineObjectId :: Val Text
  , _dataPipelinePipelinePipelineObjectName :: Val Text
  } deriving (Show, Eq)

instance ToJSON DataPipelinePipelinePipelineObject where
  toJSON DataPipelinePipelinePipelineObject{..} =
    object $
    catMaybes
    [ Just ("Fields" .= _dataPipelinePipelinePipelineObjectFields)
    , Just ("Id" .= _dataPipelinePipelinePipelineObjectId)
    , Just ("Name" .= _dataPipelinePipelinePipelineObjectName)
    ]

instance FromJSON DataPipelinePipelinePipelineObject where
  parseJSON (Object obj) =
    DataPipelinePipelinePipelineObject <$>
      obj .: "Fields" <*>
      obj .: "Id" <*>
      obj .: "Name"
  parseJSON _ = mempty

-- | Constructor for 'DataPipelinePipelinePipelineObject' containing required
-- fields as arguments.
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
