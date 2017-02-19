{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html

module Stratosphere.Resources.OpsWorksLayer where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksLayerRecipes
import Stratosphere.ResourceProperties.OpsWorksLayerLifecycleEventConfiguration
import Stratosphere.ResourceProperties.OpsWorksLayerLoadBasedAutoScaling
import Stratosphere.ResourceProperties.OpsWorksLayerVolumeConfiguration

-- | Full data type definition for OpsWorksLayer. See 'opsWorksLayer' for a
-- | more convenient constructor.
data OpsWorksLayer =
  OpsWorksLayer
  { _opsWorksLayerAttributes :: Maybe Object
  , _opsWorksLayerAutoAssignElasticIps :: Val Bool'
  , _opsWorksLayerAutoAssignPublicIps :: Val Bool'
  , _opsWorksLayerCustomInstanceProfileArn :: Maybe (Val Text)
  , _opsWorksLayerCustomJson :: Maybe Object
  , _opsWorksLayerCustomRecipes :: Maybe OpsWorksLayerRecipes
  , _opsWorksLayerCustomSecurityGroupIds :: Maybe [Val Text]
  , _opsWorksLayerEnableAutoHealing :: Val Bool'
  , _opsWorksLayerInstallUpdatesOnBoot :: Maybe (Val Bool')
  , _opsWorksLayerLifecycleEventConfiguration :: Maybe OpsWorksLayerLifecycleEventConfiguration
  , _opsWorksLayerLoadBasedAutoScaling :: Maybe OpsWorksLayerLoadBasedAutoScaling
  , _opsWorksLayerName :: Val Text
  , _opsWorksLayerPackages :: Maybe [Val Text]
  , _opsWorksLayerShortname :: Val Text
  , _opsWorksLayerStackId :: Val Text
  , _opsWorksLayerType :: Val Text
  , _opsWorksLayerUseEbsOptimizedInstances :: Maybe (Val Bool')
  , _opsWorksLayerVolumeConfigurations :: Maybe [OpsWorksLayerVolumeConfiguration]
  } deriving (Show, Eq)

instance ToJSON OpsWorksLayer where
  toJSON OpsWorksLayer{..} =
    object $
    catMaybes
    [ ("Attributes" .=) <$> _opsWorksLayerAttributes
    , Just ("AutoAssignElasticIps" .= _opsWorksLayerAutoAssignElasticIps)
    , Just ("AutoAssignPublicIps" .= _opsWorksLayerAutoAssignPublicIps)
    , ("CustomInstanceProfileArn" .=) <$> _opsWorksLayerCustomInstanceProfileArn
    , ("CustomJson" .=) <$> _opsWorksLayerCustomJson
    , ("CustomRecipes" .=) <$> _opsWorksLayerCustomRecipes
    , ("CustomSecurityGroupIds" .=) <$> _opsWorksLayerCustomSecurityGroupIds
    , Just ("EnableAutoHealing" .= _opsWorksLayerEnableAutoHealing)
    , ("InstallUpdatesOnBoot" .=) <$> _opsWorksLayerInstallUpdatesOnBoot
    , ("LifecycleEventConfiguration" .=) <$> _opsWorksLayerLifecycleEventConfiguration
    , ("LoadBasedAutoScaling" .=) <$> _opsWorksLayerLoadBasedAutoScaling
    , Just ("Name" .= _opsWorksLayerName)
    , ("Packages" .=) <$> _opsWorksLayerPackages
    , Just ("Shortname" .= _opsWorksLayerShortname)
    , Just ("StackId" .= _opsWorksLayerStackId)
    , Just ("Type" .= _opsWorksLayerType)
    , ("UseEbsOptimizedInstances" .=) <$> _opsWorksLayerUseEbsOptimizedInstances
    , ("VolumeConfigurations" .=) <$> _opsWorksLayerVolumeConfigurations
    ]

instance FromJSON OpsWorksLayer where
  parseJSON (Object obj) =
    OpsWorksLayer <$>
      obj .:? "Attributes" <*>
      obj .: "AutoAssignElasticIps" <*>
      obj .: "AutoAssignPublicIps" <*>
      obj .:? "CustomInstanceProfileArn" <*>
      obj .:? "CustomJson" <*>
      obj .:? "CustomRecipes" <*>
      obj .:? "CustomSecurityGroupIds" <*>
      obj .: "EnableAutoHealing" <*>
      obj .:? "InstallUpdatesOnBoot" <*>
      obj .:? "LifecycleEventConfiguration" <*>
      obj .:? "LoadBasedAutoScaling" <*>
      obj .: "Name" <*>
      obj .:? "Packages" <*>
      obj .: "Shortname" <*>
      obj .: "StackId" <*>
      obj .: "Type" <*>
      obj .:? "UseEbsOptimizedInstances" <*>
      obj .:? "VolumeConfigurations"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksLayer' containing required fields as arguments.
opsWorksLayer
  :: Val Bool' -- ^ 'owlAutoAssignElasticIps'
  -> Val Bool' -- ^ 'owlAutoAssignPublicIps'
  -> Val Bool' -- ^ 'owlEnableAutoHealing'
  -> Val Text -- ^ 'owlName'
  -> Val Text -- ^ 'owlShortname'
  -> Val Text -- ^ 'owlStackId'
  -> Val Text -- ^ 'owlType'
  -> OpsWorksLayer
opsWorksLayer autoAssignElasticIpsarg autoAssignPublicIpsarg enableAutoHealingarg namearg shortnamearg stackIdarg typearg =
  OpsWorksLayer
  { _opsWorksLayerAttributes = Nothing
  , _opsWorksLayerAutoAssignElasticIps = autoAssignElasticIpsarg
  , _opsWorksLayerAutoAssignPublicIps = autoAssignPublicIpsarg
  , _opsWorksLayerCustomInstanceProfileArn = Nothing
  , _opsWorksLayerCustomJson = Nothing
  , _opsWorksLayerCustomRecipes = Nothing
  , _opsWorksLayerCustomSecurityGroupIds = Nothing
  , _opsWorksLayerEnableAutoHealing = enableAutoHealingarg
  , _opsWorksLayerInstallUpdatesOnBoot = Nothing
  , _opsWorksLayerLifecycleEventConfiguration = Nothing
  , _opsWorksLayerLoadBasedAutoScaling = Nothing
  , _opsWorksLayerName = namearg
  , _opsWorksLayerPackages = Nothing
  , _opsWorksLayerShortname = shortnamearg
  , _opsWorksLayerStackId = stackIdarg
  , _opsWorksLayerType = typearg
  , _opsWorksLayerUseEbsOptimizedInstances = Nothing
  , _opsWorksLayerVolumeConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-attributes
owlAttributes :: Lens' OpsWorksLayer (Maybe Object)
owlAttributes = lens _opsWorksLayerAttributes (\s a -> s { _opsWorksLayerAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignelasticips
owlAutoAssignElasticIps :: Lens' OpsWorksLayer (Val Bool')
owlAutoAssignElasticIps = lens _opsWorksLayerAutoAssignElasticIps (\s a -> s { _opsWorksLayerAutoAssignElasticIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignpublicips
owlAutoAssignPublicIps :: Lens' OpsWorksLayer (Val Bool')
owlAutoAssignPublicIps = lens _opsWorksLayerAutoAssignPublicIps (\s a -> s { _opsWorksLayerAutoAssignPublicIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-custominstanceprofilearn
owlCustomInstanceProfileArn :: Lens' OpsWorksLayer (Maybe (Val Text))
owlCustomInstanceProfileArn = lens _opsWorksLayerCustomInstanceProfileArn (\s a -> s { _opsWorksLayerCustomInstanceProfileArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customjson
owlCustomJson :: Lens' OpsWorksLayer (Maybe Object)
owlCustomJson = lens _opsWorksLayerCustomJson (\s a -> s { _opsWorksLayerCustomJson = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customrecipes
owlCustomRecipes :: Lens' OpsWorksLayer (Maybe OpsWorksLayerRecipes)
owlCustomRecipes = lens _opsWorksLayerCustomRecipes (\s a -> s { _opsWorksLayerCustomRecipes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customsecuritygroupids
owlCustomSecurityGroupIds :: Lens' OpsWorksLayer (Maybe [Val Text])
owlCustomSecurityGroupIds = lens _opsWorksLayerCustomSecurityGroupIds (\s a -> s { _opsWorksLayerCustomSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-enableautohealing
owlEnableAutoHealing :: Lens' OpsWorksLayer (Val Bool')
owlEnableAutoHealing = lens _opsWorksLayerEnableAutoHealing (\s a -> s { _opsWorksLayerEnableAutoHealing = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-installupdatesonboot
owlInstallUpdatesOnBoot :: Lens' OpsWorksLayer (Maybe (Val Bool'))
owlInstallUpdatesOnBoot = lens _opsWorksLayerInstallUpdatesOnBoot (\s a -> s { _opsWorksLayerInstallUpdatesOnBoot = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-lifecycleeventconfiguration
owlLifecycleEventConfiguration :: Lens' OpsWorksLayer (Maybe OpsWorksLayerLifecycleEventConfiguration)
owlLifecycleEventConfiguration = lens _opsWorksLayerLifecycleEventConfiguration (\s a -> s { _opsWorksLayerLifecycleEventConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-loadbasedautoscaling
owlLoadBasedAutoScaling :: Lens' OpsWorksLayer (Maybe OpsWorksLayerLoadBasedAutoScaling)
owlLoadBasedAutoScaling = lens _opsWorksLayerLoadBasedAutoScaling (\s a -> s { _opsWorksLayerLoadBasedAutoScaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-name
owlName :: Lens' OpsWorksLayer (Val Text)
owlName = lens _opsWorksLayerName (\s a -> s { _opsWorksLayerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-packages
owlPackages :: Lens' OpsWorksLayer (Maybe [Val Text])
owlPackages = lens _opsWorksLayerPackages (\s a -> s { _opsWorksLayerPackages = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-shortname
owlShortname :: Lens' OpsWorksLayer (Val Text)
owlShortname = lens _opsWorksLayerShortname (\s a -> s { _opsWorksLayerShortname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-stackid
owlStackId :: Lens' OpsWorksLayer (Val Text)
owlStackId = lens _opsWorksLayerStackId (\s a -> s { _opsWorksLayerStackId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-type
owlType :: Lens' OpsWorksLayer (Val Text)
owlType = lens _opsWorksLayerType (\s a -> s { _opsWorksLayerType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-useebsoptimizedinstances
owlUseEbsOptimizedInstances :: Lens' OpsWorksLayer (Maybe (Val Bool'))
owlUseEbsOptimizedInstances = lens _opsWorksLayerUseEbsOptimizedInstances (\s a -> s { _opsWorksLayerUseEbsOptimizedInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-volumeconfigurations
owlVolumeConfigurations :: Lens' OpsWorksLayer (Maybe [OpsWorksLayerVolumeConfiguration])
owlVolumeConfigurations = lens _opsWorksLayerVolumeConfigurations (\s a -> s { _opsWorksLayerVolumeConfigurations = a })
