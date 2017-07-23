{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html

module Stratosphere.ResourceProperties.DataPipelinePipelineField where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for DataPipelinePipelineField. See
-- 'dataPipelinePipelineField' for a more convenient constructor.
data DataPipelinePipelineField =
  DataPipelinePipelineField
  { _dataPipelinePipelineFieldKey :: Val Text
  , _dataPipelinePipelineFieldRefValue :: Maybe (Val Text)
  , _dataPipelinePipelineFieldStringValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DataPipelinePipelineField where
  toJSON DataPipelinePipelineField{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _dataPipelinePipelineFieldKey
    , fmap (("RefValue",) . toJSON) _dataPipelinePipelineFieldRefValue
    , fmap (("StringValue",) . toJSON) _dataPipelinePipelineFieldStringValue
    ]

instance FromJSON DataPipelinePipelineField where
  parseJSON (Object obj) =
    DataPipelinePipelineField <$>
      (obj .: "Key") <*>
      (obj .:? "RefValue") <*>
      (obj .:? "StringValue")
  parseJSON _ = mempty

-- | Constructor for 'DataPipelinePipelineField' containing required fields as
-- arguments.
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
