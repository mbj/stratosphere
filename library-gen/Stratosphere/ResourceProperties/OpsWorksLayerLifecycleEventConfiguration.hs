{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksLayerLifecycleEventConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksLayerShutdownEventConfiguration

-- | Full data type definition for OpsWorksLayerLifecycleEventConfiguration.
-- See 'opsWorksLayerLifecycleEventConfiguration' for a more convenient
-- constructor.
data OpsWorksLayerLifecycleEventConfiguration =
  OpsWorksLayerLifecycleEventConfiguration
  { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration :: Maybe OpsWorksLayerShutdownEventConfiguration
  } deriving (Show, Eq)

instance ToJSON OpsWorksLayerLifecycleEventConfiguration where
  toJSON OpsWorksLayerLifecycleEventConfiguration{..} =
    object $
    catMaybes
    [ ("ShutdownEventConfiguration" .=) <$> _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration
    ]

instance FromJSON OpsWorksLayerLifecycleEventConfiguration where
  parseJSON (Object obj) =
    OpsWorksLayerLifecycleEventConfiguration <$>
      obj .:? "ShutdownEventConfiguration"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksLayerLifecycleEventConfiguration' containing
-- required fields as arguments.
opsWorksLayerLifecycleEventConfiguration
  :: OpsWorksLayerLifecycleEventConfiguration
opsWorksLayerLifecycleEventConfiguration  =
  OpsWorksLayerLifecycleEventConfiguration
  { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration
owllecShutdownEventConfiguration :: Lens' OpsWorksLayerLifecycleEventConfiguration (Maybe OpsWorksLayerShutdownEventConfiguration)
owllecShutdownEventConfiguration = lens _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration (\s a -> s { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration = a })
