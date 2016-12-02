{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionHostVolumeProperties where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionHostVolumeProperties. See
-- | 'ecsTaskDefinitionHostVolumeProperties' for a more convenient
-- | constructor.
data ECSTaskDefinitionHostVolumeProperties =
  ECSTaskDefinitionHostVolumeProperties
  { _eCSTaskDefinitionHostVolumePropertiesSourcePath :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ECSTaskDefinitionHostVolumeProperties where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON ECSTaskDefinitionHostVolumeProperties where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

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
