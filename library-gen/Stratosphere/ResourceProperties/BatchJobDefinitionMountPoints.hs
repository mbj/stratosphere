
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html

module Stratosphere.ResourceProperties.BatchJobDefinitionMountPoints where

import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionMountPoints. See
-- 'batchJobDefinitionMountPoints' for a more convenient constructor.
data BatchJobDefinitionMountPoints =
  BatchJobDefinitionMountPoints
  { _batchJobDefinitionMountPointsContainerPath :: Maybe (Val Text)
  , _batchJobDefinitionMountPointsReadOnly :: Maybe (Val Bool)
  , _batchJobDefinitionMountPointsSourceVolume :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionMountPoints where
  toJSON BatchJobDefinitionMountPoints{..} =
    object $
    catMaybes
    [ fmap (("ContainerPath",) . toJSON) _batchJobDefinitionMountPointsContainerPath
    , fmap (("ReadOnly",) . toJSON) _batchJobDefinitionMountPointsReadOnly
    , fmap (("SourceVolume",) . toJSON) _batchJobDefinitionMountPointsSourceVolume
    ]

-- | Constructor for 'BatchJobDefinitionMountPoints' containing required
-- fields as arguments.
batchJobDefinitionMountPoints
  :: BatchJobDefinitionMountPoints
batchJobDefinitionMountPoints  =
  BatchJobDefinitionMountPoints
  { _batchJobDefinitionMountPointsContainerPath = Nothing
  , _batchJobDefinitionMountPointsReadOnly = Nothing
  , _batchJobDefinitionMountPointsSourceVolume = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-containerpath
bjdmpContainerPath :: Lens' BatchJobDefinitionMountPoints (Maybe (Val Text))
bjdmpContainerPath = lens _batchJobDefinitionMountPointsContainerPath (\s a -> s { _batchJobDefinitionMountPointsContainerPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-readonly
bjdmpReadOnly :: Lens' BatchJobDefinitionMountPoints (Maybe (Val Bool))
bjdmpReadOnly = lens _batchJobDefinitionMountPointsReadOnly (\s a -> s { _batchJobDefinitionMountPointsReadOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-sourcevolume
bjdmpSourceVolume :: Lens' BatchJobDefinitionMountPoints (Maybe (Val Text))
bjdmpSourceVolume = lens _batchJobDefinitionMountPointsSourceVolume (\s a -> s { _batchJobDefinitionMountPointsSourceVolume = a })
