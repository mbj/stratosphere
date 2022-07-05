{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html

module Stratosphere.Resources.OpsWorksInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksInstanceBlockDeviceMapping
import Stratosphere.ResourceProperties.OpsWorksInstanceTimeBasedAutoScaling

-- | Full data type definition for OpsWorksInstance. See 'opsWorksInstance'
-- for a more convenient constructor.
data OpsWorksInstance =
  OpsWorksInstance
  { _opsWorksInstanceAgentVersion :: Maybe (Val Text)
  , _opsWorksInstanceAmiId :: Maybe (Val Text)
  , _opsWorksInstanceArchitecture :: Maybe (Val Text)
  , _opsWorksInstanceAutoScalingType :: Maybe (Val Text)
  , _opsWorksInstanceAvailabilityZone :: Maybe (Val Text)
  , _opsWorksInstanceBlockDeviceMappings :: Maybe [OpsWorksInstanceBlockDeviceMapping]
  , _opsWorksInstanceEbsOptimized :: Maybe (Val Bool)
  , _opsWorksInstanceElasticIps :: Maybe (ValList Text)
  , _opsWorksInstanceHostname :: Maybe (Val Text)
  , _opsWorksInstanceInstallUpdatesOnBoot :: Maybe (Val Bool)
  , _opsWorksInstanceInstanceType :: Val Text
  , _opsWorksInstanceLayerIds :: ValList Text
  , _opsWorksInstanceOs :: Maybe (Val Text)
  , _opsWorksInstanceRootDeviceType :: Maybe (Val Text)
  , _opsWorksInstanceSshKeyName :: Maybe (Val Text)
  , _opsWorksInstanceStackId :: Val Text
  , _opsWorksInstanceSubnetId :: Maybe (Val Text)
  , _opsWorksInstanceTenancy :: Maybe (Val Text)
  , _opsWorksInstanceTimeBasedAutoScaling :: Maybe OpsWorksInstanceTimeBasedAutoScaling
  , _opsWorksInstanceVirtualizationType :: Maybe (Val Text)
  , _opsWorksInstanceVolumes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksInstance where
  toResourceProperties OpsWorksInstance{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::Instance"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AgentVersion",) . toJSON) _opsWorksInstanceAgentVersion
        , fmap (("AmiId",) . toJSON) _opsWorksInstanceAmiId
        , fmap (("Architecture",) . toJSON) _opsWorksInstanceArchitecture
        , fmap (("AutoScalingType",) . toJSON) _opsWorksInstanceAutoScalingType
        , fmap (("AvailabilityZone",) . toJSON) _opsWorksInstanceAvailabilityZone
        , fmap (("BlockDeviceMappings",) . toJSON) _opsWorksInstanceBlockDeviceMappings
        , fmap (("EbsOptimized",) . toJSON) _opsWorksInstanceEbsOptimized
        , fmap (("ElasticIps",) . toJSON) _opsWorksInstanceElasticIps
        , fmap (("Hostname",) . toJSON) _opsWorksInstanceHostname
        , fmap (("InstallUpdatesOnBoot",) . toJSON) _opsWorksInstanceInstallUpdatesOnBoot
        , (Just . ("InstanceType",) . toJSON) _opsWorksInstanceInstanceType
        , (Just . ("LayerIds",) . toJSON) _opsWorksInstanceLayerIds
        , fmap (("Os",) . toJSON) _opsWorksInstanceOs
        , fmap (("RootDeviceType",) . toJSON) _opsWorksInstanceRootDeviceType
        , fmap (("SshKeyName",) . toJSON) _opsWorksInstanceSshKeyName
        , (Just . ("StackId",) . toJSON) _opsWorksInstanceStackId
        , fmap (("SubnetId",) . toJSON) _opsWorksInstanceSubnetId
        , fmap (("Tenancy",) . toJSON) _opsWorksInstanceTenancy
        , fmap (("TimeBasedAutoScaling",) . toJSON) _opsWorksInstanceTimeBasedAutoScaling
        , fmap (("VirtualizationType",) . toJSON) _opsWorksInstanceVirtualizationType
        , fmap (("Volumes",) . toJSON) _opsWorksInstanceVolumes
        ]
    }

-- | Constructor for 'OpsWorksInstance' containing required fields as
-- arguments.
opsWorksInstance
  :: Val Text -- ^ 'owiInstanceType'
  -> ValList Text -- ^ 'owiLayerIds'
  -> Val Text -- ^ 'owiStackId'
  -> OpsWorksInstance
opsWorksInstance instanceTypearg layerIdsarg stackIdarg =
  OpsWorksInstance
  { _opsWorksInstanceAgentVersion = Nothing
  , _opsWorksInstanceAmiId = Nothing
  , _opsWorksInstanceArchitecture = Nothing
  , _opsWorksInstanceAutoScalingType = Nothing
  , _opsWorksInstanceAvailabilityZone = Nothing
  , _opsWorksInstanceBlockDeviceMappings = Nothing
  , _opsWorksInstanceEbsOptimized = Nothing
  , _opsWorksInstanceElasticIps = Nothing
  , _opsWorksInstanceHostname = Nothing
  , _opsWorksInstanceInstallUpdatesOnBoot = Nothing
  , _opsWorksInstanceInstanceType = instanceTypearg
  , _opsWorksInstanceLayerIds = layerIdsarg
  , _opsWorksInstanceOs = Nothing
  , _opsWorksInstanceRootDeviceType = Nothing
  , _opsWorksInstanceSshKeyName = Nothing
  , _opsWorksInstanceStackId = stackIdarg
  , _opsWorksInstanceSubnetId = Nothing
  , _opsWorksInstanceTenancy = Nothing
  , _opsWorksInstanceTimeBasedAutoScaling = Nothing
  , _opsWorksInstanceVirtualizationType = Nothing
  , _opsWorksInstanceVolumes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-agentversion
owiAgentVersion :: Lens' OpsWorksInstance (Maybe (Val Text))
owiAgentVersion = lens _opsWorksInstanceAgentVersion (\s a -> s { _opsWorksInstanceAgentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-amiid
owiAmiId :: Lens' OpsWorksInstance (Maybe (Val Text))
owiAmiId = lens _opsWorksInstanceAmiId (\s a -> s { _opsWorksInstanceAmiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-architecture
owiArchitecture :: Lens' OpsWorksInstance (Maybe (Val Text))
owiArchitecture = lens _opsWorksInstanceArchitecture (\s a -> s { _opsWorksInstanceArchitecture = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-autoscalingtype
owiAutoScalingType :: Lens' OpsWorksInstance (Maybe (Val Text))
owiAutoScalingType = lens _opsWorksInstanceAutoScalingType (\s a -> s { _opsWorksInstanceAutoScalingType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-availabilityzone
owiAvailabilityZone :: Lens' OpsWorksInstance (Maybe (Val Text))
owiAvailabilityZone = lens _opsWorksInstanceAvailabilityZone (\s a -> s { _opsWorksInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-blockdevicemappings
owiBlockDeviceMappings :: Lens' OpsWorksInstance (Maybe [OpsWorksInstanceBlockDeviceMapping])
owiBlockDeviceMappings = lens _opsWorksInstanceBlockDeviceMappings (\s a -> s { _opsWorksInstanceBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-ebsoptimized
owiEbsOptimized :: Lens' OpsWorksInstance (Maybe (Val Bool))
owiEbsOptimized = lens _opsWorksInstanceEbsOptimized (\s a -> s { _opsWorksInstanceEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-elasticips
owiElasticIps :: Lens' OpsWorksInstance (Maybe (ValList Text))
owiElasticIps = lens _opsWorksInstanceElasticIps (\s a -> s { _opsWorksInstanceElasticIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-hostname
owiHostname :: Lens' OpsWorksInstance (Maybe (Val Text))
owiHostname = lens _opsWorksInstanceHostname (\s a -> s { _opsWorksInstanceHostname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-installupdatesonboot
owiInstallUpdatesOnBoot :: Lens' OpsWorksInstance (Maybe (Val Bool))
owiInstallUpdatesOnBoot = lens _opsWorksInstanceInstallUpdatesOnBoot (\s a -> s { _opsWorksInstanceInstallUpdatesOnBoot = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-instancetype
owiInstanceType :: Lens' OpsWorksInstance (Val Text)
owiInstanceType = lens _opsWorksInstanceInstanceType (\s a -> s { _opsWorksInstanceInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-layerids
owiLayerIds :: Lens' OpsWorksInstance (ValList Text)
owiLayerIds = lens _opsWorksInstanceLayerIds (\s a -> s { _opsWorksInstanceLayerIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-os
owiOs :: Lens' OpsWorksInstance (Maybe (Val Text))
owiOs = lens _opsWorksInstanceOs (\s a -> s { _opsWorksInstanceOs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-rootdevicetype
owiRootDeviceType :: Lens' OpsWorksInstance (Maybe (Val Text))
owiRootDeviceType = lens _opsWorksInstanceRootDeviceType (\s a -> s { _opsWorksInstanceRootDeviceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-sshkeyname
owiSshKeyName :: Lens' OpsWorksInstance (Maybe (Val Text))
owiSshKeyName = lens _opsWorksInstanceSshKeyName (\s a -> s { _opsWorksInstanceSshKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-stackid
owiStackId :: Lens' OpsWorksInstance (Val Text)
owiStackId = lens _opsWorksInstanceStackId (\s a -> s { _opsWorksInstanceStackId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-subnetid
owiSubnetId :: Lens' OpsWorksInstance (Maybe (Val Text))
owiSubnetId = lens _opsWorksInstanceSubnetId (\s a -> s { _opsWorksInstanceSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-tenancy
owiTenancy :: Lens' OpsWorksInstance (Maybe (Val Text))
owiTenancy = lens _opsWorksInstanceTenancy (\s a -> s { _opsWorksInstanceTenancy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-timebasedautoscaling
owiTimeBasedAutoScaling :: Lens' OpsWorksInstance (Maybe OpsWorksInstanceTimeBasedAutoScaling)
owiTimeBasedAutoScaling = lens _opsWorksInstanceTimeBasedAutoScaling (\s a -> s { _opsWorksInstanceTimeBasedAutoScaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-virtualizationtype
owiVirtualizationType :: Lens' OpsWorksInstance (Maybe (Val Text))
owiVirtualizationType = lens _opsWorksInstanceVirtualizationType (\s a -> s { _opsWorksInstanceVirtualizationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-volumes
owiVolumes :: Lens' OpsWorksInstance (Maybe (ValList Text))
owiVolumes = lens _opsWorksInstanceVolumes (\s a -> s { _opsWorksInstanceVolumes = a })
