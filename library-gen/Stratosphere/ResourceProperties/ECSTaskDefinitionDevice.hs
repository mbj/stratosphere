{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionDevice where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSTaskDefinitionDevice. See
-- 'ecsTaskDefinitionDevice' for a more convenient constructor.
data ECSTaskDefinitionDevice =
  ECSTaskDefinitionDevice
  { _eCSTaskDefinitionDeviceContainerPath :: Maybe (Val Text)
  , _eCSTaskDefinitionDeviceHostPath :: Val Text
  , _eCSTaskDefinitionDevicePermissions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionDevice where
  toJSON ECSTaskDefinitionDevice{..} =
    object $
    catMaybes
    [ fmap (("ContainerPath",) . toJSON) _eCSTaskDefinitionDeviceContainerPath
    , (Just . ("HostPath",) . toJSON) _eCSTaskDefinitionDeviceHostPath
    , fmap (("Permissions",) . toJSON) _eCSTaskDefinitionDevicePermissions
    ]

instance FromJSON ECSTaskDefinitionDevice where
  parseJSON (Object obj) =
    ECSTaskDefinitionDevice <$>
      (obj .:? "ContainerPath") <*>
      (obj .: "HostPath") <*>
      (obj .:? "Permissions")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionDevice' containing required fields as
-- arguments.
ecsTaskDefinitionDevice
  :: Val Text -- ^ 'ecstddHostPath'
  -> ECSTaskDefinitionDevice
ecsTaskDefinitionDevice hostPatharg =
  ECSTaskDefinitionDevice
  { _eCSTaskDefinitionDeviceContainerPath = Nothing
  , _eCSTaskDefinitionDeviceHostPath = hostPatharg
  , _eCSTaskDefinitionDevicePermissions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-containerpath
ecstddContainerPath :: Lens' ECSTaskDefinitionDevice (Maybe (Val Text))
ecstddContainerPath = lens _eCSTaskDefinitionDeviceContainerPath (\s a -> s { _eCSTaskDefinitionDeviceContainerPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-hostpath
ecstddHostPath :: Lens' ECSTaskDefinitionDevice (Val Text)
ecstddHostPath = lens _eCSTaskDefinitionDeviceHostPath (\s a -> s { _eCSTaskDefinitionDeviceHostPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-permissions
ecstddPermissions :: Lens' ECSTaskDefinitionDevice (Maybe (ValList Text))
ecstddPermissions = lens _eCSTaskDefinitionDevicePermissions (\s a -> s { _eCSTaskDefinitionDevicePermissions = a })
