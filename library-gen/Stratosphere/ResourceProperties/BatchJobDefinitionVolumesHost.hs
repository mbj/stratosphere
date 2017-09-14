{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html

module Stratosphere.ResourceProperties.BatchJobDefinitionVolumesHost where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for BatchJobDefinitionVolumesHost. See
-- 'batchJobDefinitionVolumesHost' for a more convenient constructor.
data BatchJobDefinitionVolumesHost =
  BatchJobDefinitionVolumesHost
  { _batchJobDefinitionVolumesHostSourcePath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionVolumesHost where
  toJSON BatchJobDefinitionVolumesHost{..} =
    object $
    catMaybes
    [ fmap (("SourcePath",) . toJSON) _batchJobDefinitionVolumesHostSourcePath
    ]

instance FromJSON BatchJobDefinitionVolumesHost where
  parseJSON (Object obj) =
    BatchJobDefinitionVolumesHost <$>
      (obj .:? "SourcePath")
  parseJSON _ = mempty

-- | Constructor for 'BatchJobDefinitionVolumesHost' containing required
-- fields as arguments.
batchJobDefinitionVolumesHost
  :: BatchJobDefinitionVolumesHost
batchJobDefinitionVolumesHost  =
  BatchJobDefinitionVolumesHost
  { _batchJobDefinitionVolumesHostSourcePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html#cfn-batch-jobdefinition-volumeshost-sourcepath
bjdvhSourcePath :: Lens' BatchJobDefinitionVolumesHost (Maybe (Val Text))
bjdvhSourcePath = lens _batchJobDefinitionVolumesHostSourcePath (\s a -> s { _batchJobDefinitionVolumesHostSourcePath = a })
