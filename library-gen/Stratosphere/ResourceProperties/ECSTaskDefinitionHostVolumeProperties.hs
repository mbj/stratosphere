{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostVolumeProperties where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionHostVolumeProperties. See
-- | 'ecsTaskDefinitionHostVolumeProperties' for a more convenient
-- | constructor.
data ECSTaskDefinitionHostVolumeProperties =
  ECSTaskDefinitionHostVolumeProperties
  { _eCSTaskDefinitionHostVolumePropertiesSourcePath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionHostVolumeProperties where
  toJSON ECSTaskDefinitionHostVolumeProperties{..} =
    object
    [ "SourcePath" .= _eCSTaskDefinitionHostVolumePropertiesSourcePath
    ]

instance FromJSON ECSTaskDefinitionHostVolumeProperties where
  parseJSON (Object obj) =
    ECSTaskDefinitionHostVolumeProperties <$>
      obj .: "SourcePath"
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionHostVolumeProperties' containing
-- | required fields as arguments.
ecsTaskDefinitionHostVolumeProperties
  :: ECSTaskDefinitionHostVolumeProperties
ecsTaskDefinitionHostVolumeProperties  =
  ECSTaskDefinitionHostVolumeProperties
  { _eCSTaskDefinitionHostVolumePropertiesSourcePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html#cfn-ecs-taskdefinition-volumes-host-sourcepath
ecstdhvpSourcePath :: Lens' ECSTaskDefinitionHostVolumeProperties (Maybe (Val Text))
ecstdhvpSourcePath = lens _eCSTaskDefinitionHostVolumePropertiesSourcePath (\s a -> s { _eCSTaskDefinitionHostVolumePropertiesSourcePath = a })
