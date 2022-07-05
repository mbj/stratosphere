{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html

module Stratosphere.Resources.OpsWorksLayer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksLayerRecipes
import Stratosphere.ResourceProperties.OpsWorksLayerLifecycleEventConfiguration
import Stratosphere.ResourceProperties.OpsWorksLayerLoadBasedAutoScaling
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.OpsWorksLayerVolumeConfiguration

-- | Full data type definition for OpsWorksLayer. See 'opsWorksLayer' for a
-- more convenient constructor.
data OpsWorksLayer =
  OpsWorksLayer
  { _opsWorksLayerAttributes :: Maybe Object
  , _opsWorksLayerAutoAssignElasticIps :: Val Bool
  , _opsWorksLayerAutoAssignPublicIps :: Val Bool
  , _opsWorksLayerCustomInstanceProfileArn :: Maybe (Val Text)
  , _opsWorksLayerCustomJson :: Maybe Object
  , _opsWorksLayerCustomRecipes :: Maybe OpsWorksLayerRecipes
  , _opsWorksLayerCustomSecurityGroupIds :: Maybe (ValList Text)
  , _opsWorksLayerEnableAutoHealing :: Val Bool
  , _opsWorksLayerInstallUpdatesOnBoot :: Maybe (Val Bool)
  , _opsWorksLayerLifecycleEventConfiguration :: Maybe OpsWorksLayerLifecycleEventConfiguration
  , _opsWorksLayerLoadBasedAutoScaling :: Maybe OpsWorksLayerLoadBasedAutoScaling
  , _opsWorksLayerName :: Val Text
  , _opsWorksLayerPackages :: Maybe (ValList Text)
  , _opsWorksLayerShortname :: Val Text
  , _opsWorksLayerStackId :: Val Text
  , _opsWorksLayerTags :: Maybe [Tag]
  , _opsWorksLayerType :: Val Text
  , _opsWorksLayerUseEbsOptimizedInstances :: Maybe (Val Bool)
  , _opsWorksLayerVolumeConfigurations :: Maybe [OpsWorksLayerVolumeConfiguration]
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksLayer where
  toResourceProperties OpsWorksLayer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::Layer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Attributes",) . toJSON) _opsWorksLayerAttributes
        , (Just . ("AutoAssignElasticIps",) . toJSON) _opsWorksLayerAutoAssignElasticIps
        , (Just . ("AutoAssignPublicIps",) . toJSON) _opsWorksLayerAutoAssignPublicIps
        , fmap (("CustomInstanceProfileArn",) . toJSON) _opsWorksLayerCustomInstanceProfileArn
        , fmap (("CustomJson",) . toJSON) _opsWorksLayerCustomJson
        , fmap (("CustomRecipes",) . toJSON) _opsWorksLayerCustomRecipes
        , fmap (("CustomSecurityGroupIds",) . toJSON) _opsWorksLayerCustomSecurityGroupIds
        , (Just . ("EnableAutoHealing",) . toJSON) _opsWorksLayerEnableAutoHealing
        , fmap (("InstallUpdatesOnBoot",) . toJSON) _opsWorksLayerInstallUpdatesOnBoot
        , fmap (("LifecycleEventConfiguration",) . toJSON) _opsWorksLayerLifecycleEventConfiguration
        , fmap (("LoadBasedAutoScaling",) . toJSON) _opsWorksLayerLoadBasedAutoScaling
        , (Just . ("Name",) . toJSON) _opsWorksLayerName
        , fmap (("Packages",) . toJSON) _opsWorksLayerPackages
        , (Just . ("Shortname",) . toJSON) _opsWorksLayerShortname
        , (Just . ("StackId",) . toJSON) _opsWorksLayerStackId
        , fmap (("Tags",) . toJSON) _opsWorksLayerTags
        , (Just . ("Type",) . toJSON) _opsWorksLayerType
        , fmap (("UseEbsOptimizedInstances",) . toJSON) _opsWorksLayerUseEbsOptimizedInstances
        , fmap (("VolumeConfigurations",) . toJSON) _opsWorksLayerVolumeConfigurations
        ]
    }

-- | Constructor for 'OpsWorksLayer' containing required fields as arguments.
opsWorksLayer
  :: Val Bool -- ^ 'owlAutoAssignElasticIps'
  -> Val Bool -- ^ 'owlAutoAssignPublicIps'
  -> Val Bool -- ^ 'owlEnableAutoHealing'
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
  , _opsWorksLayerTags = Nothing
  , _opsWorksLayerType = typearg
  , _opsWorksLayerUseEbsOptimizedInstances = Nothing
  , _opsWorksLayerVolumeConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-attributes
owlAttributes :: Lens' OpsWorksLayer (Maybe Object)
owlAttributes = lens _opsWorksLayerAttributes (\s a -> s { _opsWorksLayerAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignelasticips
owlAutoAssignElasticIps :: Lens' OpsWorksLayer (Val Bool)
owlAutoAssignElasticIps = lens _opsWorksLayerAutoAssignElasticIps (\s a -> s { _opsWorksLayerAutoAssignElasticIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignpublicips
owlAutoAssignPublicIps :: Lens' OpsWorksLayer (Val Bool)
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
owlCustomSecurityGroupIds :: Lens' OpsWorksLayer (Maybe (ValList Text))
owlCustomSecurityGroupIds = lens _opsWorksLayerCustomSecurityGroupIds (\s a -> s { _opsWorksLayerCustomSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-enableautohealing
owlEnableAutoHealing :: Lens' OpsWorksLayer (Val Bool)
owlEnableAutoHealing = lens _opsWorksLayerEnableAutoHealing (\s a -> s { _opsWorksLayerEnableAutoHealing = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-installupdatesonboot
owlInstallUpdatesOnBoot :: Lens' OpsWorksLayer (Maybe (Val Bool))
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
owlPackages :: Lens' OpsWorksLayer (Maybe (ValList Text))
owlPackages = lens _opsWorksLayerPackages (\s a -> s { _opsWorksLayerPackages = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-shortname
owlShortname :: Lens' OpsWorksLayer (Val Text)
owlShortname = lens _opsWorksLayerShortname (\s a -> s { _opsWorksLayerShortname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-stackid
owlStackId :: Lens' OpsWorksLayer (Val Text)
owlStackId = lens _opsWorksLayerStackId (\s a -> s { _opsWorksLayerStackId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-tags
owlTags :: Lens' OpsWorksLayer (Maybe [Tag])
owlTags = lens _opsWorksLayerTags (\s a -> s { _opsWorksLayerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-type
owlType :: Lens' OpsWorksLayer (Val Text)
owlType = lens _opsWorksLayerType (\s a -> s { _opsWorksLayerType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-useebsoptimizedinstances
owlUseEbsOptimizedInstances :: Lens' OpsWorksLayer (Maybe (Val Bool))
owlUseEbsOptimizedInstances = lens _opsWorksLayerUseEbsOptimizedInstances (\s a -> s { _opsWorksLayerUseEbsOptimizedInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-volumeconfigurations
owlVolumeConfigurations :: Lens' OpsWorksLayer (Maybe [OpsWorksLayerVolumeConfiguration])
owlVolumeConfigurations = lens _opsWorksLayerVolumeConfigurations (\s a -> s { _opsWorksLayerVolumeConfigurations = a })
