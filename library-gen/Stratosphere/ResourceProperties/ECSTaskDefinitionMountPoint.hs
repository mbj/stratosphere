{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionMountPoint where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionMountPoint. See
-- 'ecsTaskDefinitionMountPoint' for a more convenient constructor.
data ECSTaskDefinitionMountPoint =
  ECSTaskDefinitionMountPoint
  { _eCSTaskDefinitionMountPointContainerPath :: Maybe (Val Text)
  , _eCSTaskDefinitionMountPointReadOnly :: Maybe (Val Bool)
  , _eCSTaskDefinitionMountPointSourceVolume :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionMountPoint where
  toJSON ECSTaskDefinitionMountPoint{..} =
    object $
    catMaybes
    [ fmap (("ContainerPath",) . toJSON) _eCSTaskDefinitionMountPointContainerPath
    , fmap (("ReadOnly",) . toJSON . fmap Bool') _eCSTaskDefinitionMountPointReadOnly
    , fmap (("SourceVolume",) . toJSON) _eCSTaskDefinitionMountPointSourceVolume
    ]

instance FromJSON ECSTaskDefinitionMountPoint where
  parseJSON (Object obj) =
    ECSTaskDefinitionMountPoint <$>
      (obj .:? "ContainerPath") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ReadOnly") <*>
      (obj .:? "SourceVolume")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionMountPoint' containing required fields
-- as arguments.
ecsTaskDefinitionMountPoint
  :: ECSTaskDefinitionMountPoint
ecsTaskDefinitionMountPoint  =
  ECSTaskDefinitionMountPoint
  { _eCSTaskDefinitionMountPointContainerPath = Nothing
  , _eCSTaskDefinitionMountPointReadOnly = Nothing
  , _eCSTaskDefinitionMountPointSourceVolume = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-containerpath
ecstdmpContainerPath :: Lens' ECSTaskDefinitionMountPoint (Maybe (Val Text))
ecstdmpContainerPath = lens _eCSTaskDefinitionMountPointContainerPath (\s a -> s { _eCSTaskDefinitionMountPointContainerPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-readonly
ecstdmpReadOnly :: Lens' ECSTaskDefinitionMountPoint (Maybe (Val Bool))
ecstdmpReadOnly = lens _eCSTaskDefinitionMountPointReadOnly (\s a -> s { _eCSTaskDefinitionMountPointReadOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-sourcevolume
ecstdmpSourceVolume :: Lens' ECSTaskDefinitionMountPoint (Maybe (Val Text))
ecstdmpSourceVolume = lens _eCSTaskDefinitionMountPointSourceVolume (\s a -> s { _eCSTaskDefinitionMountPointSourceVolume = a })
