{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostVolumeProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionHostVolumeProperties. See
-- 'ecsTaskDefinitionHostVolumeProperties' for a more convenient
-- constructor.
data ECSTaskDefinitionHostVolumeProperties =
  ECSTaskDefinitionHostVolumeProperties
  { _eCSTaskDefinitionHostVolumePropertiesSourcePath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionHostVolumeProperties where
  toJSON ECSTaskDefinitionHostVolumeProperties{..} =
    object $
    catMaybes
    [ fmap (("SourcePath",) . toJSON) _eCSTaskDefinitionHostVolumePropertiesSourcePath
    ]

-- | Constructor for 'ECSTaskDefinitionHostVolumeProperties' containing
-- required fields as arguments.
ecsTaskDefinitionHostVolumeProperties
  :: ECSTaskDefinitionHostVolumeProperties
ecsTaskDefinitionHostVolumeProperties  =
  ECSTaskDefinitionHostVolumeProperties
  { _eCSTaskDefinitionHostVolumePropertiesSourcePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html#cfn-ecs-taskdefinition-volumes-host-sourcepath
ecstdhvpSourcePath :: Lens' ECSTaskDefinitionHostVolumeProperties (Maybe (Val Text))
ecstdhvpSourcePath = lens _eCSTaskDefinitionHostVolumePropertiesSourcePath (\s a -> s { _eCSTaskDefinitionHostVolumePropertiesSourcePath = a })
