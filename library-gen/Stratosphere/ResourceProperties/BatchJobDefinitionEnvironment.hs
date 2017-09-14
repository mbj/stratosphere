{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html

module Stratosphere.ResourceProperties.BatchJobDefinitionEnvironment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for BatchJobDefinitionEnvironment. See
-- 'batchJobDefinitionEnvironment' for a more convenient constructor.
data BatchJobDefinitionEnvironment =
  BatchJobDefinitionEnvironment
  { _batchJobDefinitionEnvironmentName :: Maybe (Val Text)
  , _batchJobDefinitionEnvironmentValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionEnvironment where
  toJSON BatchJobDefinitionEnvironment{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _batchJobDefinitionEnvironmentName
    , fmap (("Value",) . toJSON) _batchJobDefinitionEnvironmentValue
    ]

instance FromJSON BatchJobDefinitionEnvironment where
  parseJSON (Object obj) =
    BatchJobDefinitionEnvironment <$>
      (obj .:? "Name") <*>
      (obj .:? "Value")
  parseJSON _ = mempty

-- | Constructor for 'BatchJobDefinitionEnvironment' containing required
-- fields as arguments.
batchJobDefinitionEnvironment
  :: BatchJobDefinitionEnvironment
batchJobDefinitionEnvironment  =
  BatchJobDefinitionEnvironment
  { _batchJobDefinitionEnvironmentName = Nothing
  , _batchJobDefinitionEnvironmentValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-name
bjdeName :: Lens' BatchJobDefinitionEnvironment (Maybe (Val Text))
bjdeName = lens _batchJobDefinitionEnvironmentName (\s a -> s { _batchJobDefinitionEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-value
bjdeValue :: Lens' BatchJobDefinitionEnvironment (Maybe (Val Text))
bjdeValue = lens _batchJobDefinitionEnvironmentValue (\s a -> s { _batchJobDefinitionEnvironmentValue = a })
