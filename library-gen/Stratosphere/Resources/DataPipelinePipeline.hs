{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html

module Stratosphere.Resources.DataPipelinePipeline where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterObject
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterValue
import Stratosphere.ResourceProperties.DataPipelinePipelinePipelineObject
import Stratosphere.ResourceProperties.DataPipelinePipelinePipelineTag

-- | Full data type definition for DataPipelinePipeline. See
-- | 'dataPipelinePipeline' for a more convenient constructor.
data DataPipelinePipeline =
  DataPipelinePipeline
  { _dataPipelinePipelineActivate :: Maybe (Val Bool')
  , _dataPipelinePipelineDescription :: Maybe (Val Text)
  , _dataPipelinePipelineName :: Val Text
  , _dataPipelinePipelineParameterObjects :: [DataPipelinePipelineParameterObject]
  , _dataPipelinePipelineParameterValues :: Maybe [DataPipelinePipelineParameterValue]
  , _dataPipelinePipelinePipelineObjects :: Maybe [DataPipelinePipelinePipelineObject]
  , _dataPipelinePipelinePipelineTags :: Maybe [DataPipelinePipelinePipelineTag]
  } deriving (Show, Eq)

instance ToJSON DataPipelinePipeline where
  toJSON DataPipelinePipeline{..} =
    object $
    catMaybes
    [ ("Activate" .=) <$> _dataPipelinePipelineActivate
    , ("Description" .=) <$> _dataPipelinePipelineDescription
    , Just ("Name" .= _dataPipelinePipelineName)
    , Just ("ParameterObjects" .= _dataPipelinePipelineParameterObjects)
    , ("ParameterValues" .=) <$> _dataPipelinePipelineParameterValues
    , ("PipelineObjects" .=) <$> _dataPipelinePipelinePipelineObjects
    , ("PipelineTags" .=) <$> _dataPipelinePipelinePipelineTags
    ]

instance FromJSON DataPipelinePipeline where
  parseJSON (Object obj) =
    DataPipelinePipeline <$>
      obj .:? "Activate" <*>
      obj .:? "Description" <*>
      obj .: "Name" <*>
      obj .: "ParameterObjects" <*>
      obj .:? "ParameterValues" <*>
      obj .:? "PipelineObjects" <*>
      obj .:? "PipelineTags"
  parseJSON _ = mempty

-- | Constructor for 'DataPipelinePipeline' containing required fields as
-- | arguments.
dataPipelinePipeline
  :: Val Text -- ^ 'dppName'
  -> [DataPipelinePipelineParameterObject] -- ^ 'dppParameterObjects'
  -> DataPipelinePipeline
dataPipelinePipeline namearg parameterObjectsarg =
  DataPipelinePipeline
  { _dataPipelinePipelineActivate = Nothing
  , _dataPipelinePipelineDescription = Nothing
  , _dataPipelinePipelineName = namearg
  , _dataPipelinePipelineParameterObjects = parameterObjectsarg
  , _dataPipelinePipelineParameterValues = Nothing
  , _dataPipelinePipelinePipelineObjects = Nothing
  , _dataPipelinePipelinePipelineTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-activate
dppActivate :: Lens' DataPipelinePipeline (Maybe (Val Bool'))
dppActivate = lens _dataPipelinePipelineActivate (\s a -> s { _dataPipelinePipelineActivate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-description
dppDescription :: Lens' DataPipelinePipeline (Maybe (Val Text))
dppDescription = lens _dataPipelinePipelineDescription (\s a -> s { _dataPipelinePipelineDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-name
dppName :: Lens' DataPipelinePipeline (Val Text)
dppName = lens _dataPipelinePipelineName (\s a -> s { _dataPipelinePipelineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parameterobjects
dppParameterObjects :: Lens' DataPipelinePipeline [DataPipelinePipelineParameterObject]
dppParameterObjects = lens _dataPipelinePipelineParameterObjects (\s a -> s { _dataPipelinePipelineParameterObjects = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parametervalues
dppParameterValues :: Lens' DataPipelinePipeline (Maybe [DataPipelinePipelineParameterValue])
dppParameterValues = lens _dataPipelinePipelineParameterValues (\s a -> s { _dataPipelinePipelineParameterValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelineobjects
dppPipelineObjects :: Lens' DataPipelinePipeline (Maybe [DataPipelinePipelinePipelineObject])
dppPipelineObjects = lens _dataPipelinePipelinePipelineObjects (\s a -> s { _dataPipelinePipelinePipelineObjects = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelinetags
dppPipelineTags :: Lens' DataPipelinePipeline (Maybe [DataPipelinePipelinePipelineTag])
dppPipelineTags = lens _dataPipelinePipelinePipelineTags (\s a -> s { _dataPipelinePipelinePipelineTags = a })
