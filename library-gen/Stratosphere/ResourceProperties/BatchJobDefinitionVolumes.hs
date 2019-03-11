{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html

module Stratosphere.ResourceProperties.BatchJobDefinitionVolumes where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionVolumesHost

-- | Full data type definition for BatchJobDefinitionVolumes. See
-- 'batchJobDefinitionVolumes' for a more convenient constructor.
data BatchJobDefinitionVolumes =
  BatchJobDefinitionVolumes
  { _batchJobDefinitionVolumesHost :: Maybe BatchJobDefinitionVolumesHost
  , _batchJobDefinitionVolumesName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionVolumes where
  toJSON BatchJobDefinitionVolumes{..} =
    object $
    catMaybes
    [ fmap (("Host",) . toJSON) _batchJobDefinitionVolumesHost
    , fmap (("Name",) . toJSON) _batchJobDefinitionVolumesName
    ]

-- | Constructor for 'BatchJobDefinitionVolumes' containing required fields as
-- arguments.
batchJobDefinitionVolumes
  :: BatchJobDefinitionVolumes
batchJobDefinitionVolumes  =
  BatchJobDefinitionVolumes
  { _batchJobDefinitionVolumesHost = Nothing
  , _batchJobDefinitionVolumesName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-host
bjdvHost :: Lens' BatchJobDefinitionVolumes (Maybe BatchJobDefinitionVolumesHost)
bjdvHost = lens _batchJobDefinitionVolumesHost (\s a -> s { _batchJobDefinitionVolumesHost = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-name
bjdvName :: Lens' BatchJobDefinitionVolumes (Maybe (Val Text))
bjdvName = lens _batchJobDefinitionVolumesName (\s a -> s { _batchJobDefinitionVolumesName = a })
