{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html

module Stratosphere.Resources.ConfigConfigurationRecorder where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ConfigConfigurationRecorderRecordingGroup

-- | Full data type definition for ConfigConfigurationRecorder. See
-- | 'configConfigurationRecorder' for a more convenient constructor.
data ConfigConfigurationRecorder =
  ConfigConfigurationRecorder
  { _configConfigurationRecorderName :: Maybe (Val Text)
  , _configConfigurationRecorderRecordingGroup :: Maybe ConfigConfigurationRecorderRecordingGroup
  , _configConfigurationRecorderRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON ConfigConfigurationRecorder where
  toJSON ConfigConfigurationRecorder{..} =
    object $
    catMaybes
    [ ("Name" .=) <$> _configConfigurationRecorderName
    , ("RecordingGroup" .=) <$> _configConfigurationRecorderRecordingGroup
    , Just ("RoleArn" .= _configConfigurationRecorderRoleArn)
    ]

instance FromJSON ConfigConfigurationRecorder where
  parseJSON (Object obj) =
    ConfigConfigurationRecorder <$>
      obj .:? "Name" <*>
      obj .:? "RecordingGroup" <*>
      obj .: "RoleArn"
  parseJSON _ = mempty

-- | Constructor for 'ConfigConfigurationRecorder' containing required fields
-- | as arguments.
configConfigurationRecorder
  :: Val Text -- ^ 'ccrRoleArn'
  -> ConfigConfigurationRecorder
configConfigurationRecorder roleArnarg =
  ConfigConfigurationRecorder
  { _configConfigurationRecorderName = Nothing
  , _configConfigurationRecorderRecordingGroup = Nothing
  , _configConfigurationRecorderRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-name
ccrName :: Lens' ConfigConfigurationRecorder (Maybe (Val Text))
ccrName = lens _configConfigurationRecorderName (\s a -> s { _configConfigurationRecorderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-recordinggroup
ccrRecordingGroup :: Lens' ConfigConfigurationRecorder (Maybe ConfigConfigurationRecorderRecordingGroup)
ccrRecordingGroup = lens _configConfigurationRecorderRecordingGroup (\s a -> s { _configConfigurationRecorderRecordingGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-rolearn
ccrRoleArn :: Lens' ConfigConfigurationRecorder (Val Text)
ccrRoleArn = lens _configConfigurationRecorderRoleArn (\s a -> s { _configConfigurationRecorderRoleArn = a })
