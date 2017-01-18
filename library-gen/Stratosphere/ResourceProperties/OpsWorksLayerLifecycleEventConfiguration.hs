{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksLayerLifecycleEventConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksLayerShutdownEventConfiguration

-- | Full data type definition for OpsWorksLayerLifecycleEventConfiguration.
-- | See 'opsWorksLayerLifecycleEventConfiguration' for a more convenient
-- | constructor.
data OpsWorksLayerLifecycleEventConfiguration =
  OpsWorksLayerLifecycleEventConfiguration
  { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration :: Maybe OpsWorksLayerShutdownEventConfiguration
  } deriving (Show, Eq, Generic)

instance ToJSON OpsWorksLayerLifecycleEventConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON OpsWorksLayerLifecycleEventConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'OpsWorksLayerLifecycleEventConfiguration' containing
-- | required fields as arguments.
opsWorksLayerLifecycleEventConfiguration
  :: OpsWorksLayerLifecycleEventConfiguration
opsWorksLayerLifecycleEventConfiguration  =
  OpsWorksLayerLifecycleEventConfiguration
  { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration
owllecShutdownEventConfiguration :: Lens' OpsWorksLayerLifecycleEventConfiguration (Maybe OpsWorksLayerShutdownEventConfiguration)
owllecShutdownEventConfiguration = lens _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration (\s a -> s { _opsWorksLayerLifecycleEventConfigurationShutdownEventConfiguration = a })
