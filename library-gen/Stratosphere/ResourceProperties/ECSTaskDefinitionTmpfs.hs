{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionTmpfs where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionTmpfs. See
-- 'ecsTaskDefinitionTmpfs' for a more convenient constructor.
data ECSTaskDefinitionTmpfs =
  ECSTaskDefinitionTmpfs
  { _eCSTaskDefinitionTmpfsContainerPath :: Maybe (Val Text)
  , _eCSTaskDefinitionTmpfsMountOptions :: Maybe (ValList Text)
  , _eCSTaskDefinitionTmpfsSize :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionTmpfs where
  toJSON ECSTaskDefinitionTmpfs{..} =
    object $
    catMaybes
    [ fmap (("ContainerPath",) . toJSON) _eCSTaskDefinitionTmpfsContainerPath
    , fmap (("MountOptions",) . toJSON) _eCSTaskDefinitionTmpfsMountOptions
    , fmap (("Size",) . toJSON) _eCSTaskDefinitionTmpfsSize
    ]

-- | Constructor for 'ECSTaskDefinitionTmpfs' containing required fields as
-- arguments.
ecsTaskDefinitionTmpfs
  :: ECSTaskDefinitionTmpfs
ecsTaskDefinitionTmpfs  =
  ECSTaskDefinitionTmpfs
  { _eCSTaskDefinitionTmpfsContainerPath = Nothing
  , _eCSTaskDefinitionTmpfsMountOptions = Nothing
  , _eCSTaskDefinitionTmpfsSize = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-containerpath
ecstdtContainerPath :: Lens' ECSTaskDefinitionTmpfs (Maybe (Val Text))
ecstdtContainerPath = lens _eCSTaskDefinitionTmpfsContainerPath (\s a -> s { _eCSTaskDefinitionTmpfsContainerPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-mountoptions
ecstdtMountOptions :: Lens' ECSTaskDefinitionTmpfs (Maybe (ValList Text))
ecstdtMountOptions = lens _eCSTaskDefinitionTmpfsMountOptions (\s a -> s { _eCSTaskDefinitionTmpfsMountOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-size
ecstdtSize :: Lens' ECSTaskDefinitionTmpfs (Maybe (Val Integer))
ecstdtSize = lens _eCSTaskDefinitionTmpfsSize (\s a -> s { _eCSTaskDefinitionTmpfsSize = a })
