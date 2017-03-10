{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html

module Stratosphere.ResourceProperties.ConfigConfigurationRecorderRecordingGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ConfigConfigurationRecorderRecordingGroup.
-- See 'configConfigurationRecorderRecordingGroup' for a more convenient
-- constructor.
data ConfigConfigurationRecorderRecordingGroup =
  ConfigConfigurationRecorderRecordingGroup
  { _configConfigurationRecorderRecordingGroupAllSupported :: Maybe (Val Bool')
  , _configConfigurationRecorderRecordingGroupIncludeGlobalResourceTypes :: Maybe (Val Bool')
  , _configConfigurationRecorderRecordingGroupResourceTypes :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON ConfigConfigurationRecorderRecordingGroup where
  toJSON ConfigConfigurationRecorderRecordingGroup{..} =
    object $
    catMaybes
    [ ("AllSupported" .=) <$> _configConfigurationRecorderRecordingGroupAllSupported
    , ("IncludeGlobalResourceTypes" .=) <$> _configConfigurationRecorderRecordingGroupIncludeGlobalResourceTypes
    , ("ResourceTypes" .=) <$> _configConfigurationRecorderRecordingGroupResourceTypes
    ]

instance FromJSON ConfigConfigurationRecorderRecordingGroup where
  parseJSON (Object obj) =
    ConfigConfigurationRecorderRecordingGroup <$>
      obj .:? "AllSupported" <*>
      obj .:? "IncludeGlobalResourceTypes" <*>
      obj .:? "ResourceTypes"
  parseJSON _ = mempty

-- | Constructor for 'ConfigConfigurationRecorderRecordingGroup' containing
-- required fields as arguments.
configConfigurationRecorderRecordingGroup
  :: ConfigConfigurationRecorderRecordingGroup
configConfigurationRecorderRecordingGroup  =
  ConfigConfigurationRecorderRecordingGroup
  { _configConfigurationRecorderRecordingGroupAllSupported = Nothing
  , _configConfigurationRecorderRecordingGroupIncludeGlobalResourceTypes = Nothing
  , _configConfigurationRecorderRecordingGroupResourceTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported
ccrrgAllSupported :: Lens' ConfigConfigurationRecorderRecordingGroup (Maybe (Val Bool'))
ccrrgAllSupported = lens _configConfigurationRecorderRecordingGroupAllSupported (\s a -> s { _configConfigurationRecorderRecordingGroupAllSupported = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes
ccrrgIncludeGlobalResourceTypes :: Lens' ConfigConfigurationRecorderRecordingGroup (Maybe (Val Bool'))
ccrrgIncludeGlobalResourceTypes = lens _configConfigurationRecorderRecordingGroupIncludeGlobalResourceTypes (\s a -> s { _configConfigurationRecorderRecordingGroupIncludeGlobalResourceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes
ccrrgResourceTypes :: Lens' ConfigConfigurationRecorderRecordingGroup (Maybe [Val Text])
ccrrgResourceTypes = lens _configConfigurationRecorderRecordingGroupResourceTypes (\s a -> s { _configConfigurationRecorderRecordingGroupResourceTypes = a })
