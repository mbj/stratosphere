{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html

module Stratosphere.ResourceProperties.OpsWorksLayerVolumeConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksLayerVolumeConfiguration. See
-- | 'opsWorksLayerVolumeConfiguration' for a more convenient constructor.
data OpsWorksLayerVolumeConfiguration =
  OpsWorksLayerVolumeConfiguration
  { _opsWorksLayerVolumeConfigurationIops :: Maybe (Val Integer')
  , _opsWorksLayerVolumeConfigurationMountPoint :: Maybe (Val Text)
  , _opsWorksLayerVolumeConfigurationNumberOfDisks :: Maybe (Val Integer')
  , _opsWorksLayerVolumeConfigurationRaidLevel :: Maybe (Val Integer')
  , _opsWorksLayerVolumeConfigurationSize :: Maybe (Val Integer')
  , _opsWorksLayerVolumeConfigurationVolumeType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON OpsWorksLayerVolumeConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON OpsWorksLayerVolumeConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'OpsWorksLayerVolumeConfiguration' containing required
-- | fields as arguments.
opsWorksLayerVolumeConfiguration
  :: OpsWorksLayerVolumeConfiguration
opsWorksLayerVolumeConfiguration  =
  OpsWorksLayerVolumeConfiguration
  { _opsWorksLayerVolumeConfigurationIops = Nothing
  , _opsWorksLayerVolumeConfigurationMountPoint = Nothing
  , _opsWorksLayerVolumeConfigurationNumberOfDisks = Nothing
  , _opsWorksLayerVolumeConfigurationRaidLevel = Nothing
  , _opsWorksLayerVolumeConfigurationSize = Nothing
  , _opsWorksLayerVolumeConfigurationVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-iops
owlvcIops :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Integer'))
owlvcIops = lens _opsWorksLayerVolumeConfigurationIops (\s a -> s { _opsWorksLayerVolumeConfigurationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-mountpoint
owlvcMountPoint :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Text))
owlvcMountPoint = lens _opsWorksLayerVolumeConfigurationMountPoint (\s a -> s { _opsWorksLayerVolumeConfigurationMountPoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-numberofdisks
owlvcNumberOfDisks :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Integer'))
owlvcNumberOfDisks = lens _opsWorksLayerVolumeConfigurationNumberOfDisks (\s a -> s { _opsWorksLayerVolumeConfigurationNumberOfDisks = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-raidlevel
owlvcRaidLevel :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Integer'))
owlvcRaidLevel = lens _opsWorksLayerVolumeConfigurationRaidLevel (\s a -> s { _opsWorksLayerVolumeConfigurationRaidLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-size
owlvcSize :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Integer'))
owlvcSize = lens _opsWorksLayerVolumeConfigurationSize (\s a -> s { _opsWorksLayerVolumeConfigurationSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-volumetype
owlvcVolumeType :: Lens' OpsWorksLayerVolumeConfiguration (Maybe (Val Text))
owlvcVolumeType = lens _opsWorksLayerVolumeConfigurationVolumeType (\s a -> s { _opsWorksLayerVolumeConfigurationVolumeType = a })
