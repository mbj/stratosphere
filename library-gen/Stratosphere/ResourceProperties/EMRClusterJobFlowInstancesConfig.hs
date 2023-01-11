
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html

module Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterInstanceFleetConfig
import Stratosphere.ResourceProperties.EMRClusterInstanceGroupConfig
import Stratosphere.ResourceProperties.EMRClusterPlacementType

-- | Full data type definition for EMRClusterJobFlowInstancesConfig. See
-- 'emrClusterJobFlowInstancesConfig' for a more convenient constructor.
data EMRClusterJobFlowInstancesConfig =
  EMRClusterJobFlowInstancesConfig
  { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups :: Maybe (ValList Text)
  , _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups :: Maybe (ValList Text)
  , _eMRClusterJobFlowInstancesConfigCoreInstanceFleet :: Maybe EMRClusterInstanceFleetConfig
  , _eMRClusterJobFlowInstancesConfigCoreInstanceGroup :: Maybe EMRClusterInstanceGroupConfig
  , _eMRClusterJobFlowInstancesConfigEc2KeyName :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEc2SubnetId :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEc2SubnetIds :: Maybe (ValList Text)
  , _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigHadoopVersion :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigKeepJobFlowAliveWhenNoSteps :: Maybe (Val Bool)
  , _eMRClusterJobFlowInstancesConfigMasterInstanceFleet :: Maybe EMRClusterInstanceFleetConfig
  , _eMRClusterJobFlowInstancesConfigMasterInstanceGroup :: Maybe EMRClusterInstanceGroupConfig
  , _eMRClusterJobFlowInstancesConfigPlacement :: Maybe EMRClusterPlacementType
  , _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigTerminationProtected :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EMRClusterJobFlowInstancesConfig where
  toJSON EMRClusterJobFlowInstancesConfig{..} =
    object $
    catMaybes
    [ fmap (("AdditionalMasterSecurityGroups",) . toJSON) _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups
    , fmap (("AdditionalSlaveSecurityGroups",) . toJSON) _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups
    , fmap (("CoreInstanceFleet",) . toJSON) _eMRClusterJobFlowInstancesConfigCoreInstanceFleet
    , fmap (("CoreInstanceGroup",) . toJSON) _eMRClusterJobFlowInstancesConfigCoreInstanceGroup
    , fmap (("Ec2KeyName",) . toJSON) _eMRClusterJobFlowInstancesConfigEc2KeyName
    , fmap (("Ec2SubnetId",) . toJSON) _eMRClusterJobFlowInstancesConfigEc2SubnetId
    , fmap (("Ec2SubnetIds",) . toJSON) _eMRClusterJobFlowInstancesConfigEc2SubnetIds
    , fmap (("EmrManagedMasterSecurityGroup",) . toJSON) _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup
    , fmap (("EmrManagedSlaveSecurityGroup",) . toJSON) _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup
    , fmap (("HadoopVersion",) . toJSON) _eMRClusterJobFlowInstancesConfigHadoopVersion
    , fmap (("KeepJobFlowAliveWhenNoSteps",) . toJSON) _eMRClusterJobFlowInstancesConfigKeepJobFlowAliveWhenNoSteps
    , fmap (("MasterInstanceFleet",) . toJSON) _eMRClusterJobFlowInstancesConfigMasterInstanceFleet
    , fmap (("MasterInstanceGroup",) . toJSON) _eMRClusterJobFlowInstancesConfigMasterInstanceGroup
    , fmap (("Placement",) . toJSON) _eMRClusterJobFlowInstancesConfigPlacement
    , fmap (("ServiceAccessSecurityGroup",) . toJSON) _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup
    , fmap (("TerminationProtected",) . toJSON) _eMRClusterJobFlowInstancesConfigTerminationProtected
    ]

-- | Constructor for 'EMRClusterJobFlowInstancesConfig' containing required
-- fields as arguments.
emrClusterJobFlowInstancesConfig
  :: EMRClusterJobFlowInstancesConfig
emrClusterJobFlowInstancesConfig  =
  EMRClusterJobFlowInstancesConfig
  { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups = Nothing
  , _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups = Nothing
  , _eMRClusterJobFlowInstancesConfigCoreInstanceFleet = Nothing
  , _eMRClusterJobFlowInstancesConfigCoreInstanceGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigEc2KeyName = Nothing
  , _eMRClusterJobFlowInstancesConfigEc2SubnetId = Nothing
  , _eMRClusterJobFlowInstancesConfigEc2SubnetIds = Nothing
  , _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigHadoopVersion = Nothing
  , _eMRClusterJobFlowInstancesConfigKeepJobFlowAliveWhenNoSteps = Nothing
  , _eMRClusterJobFlowInstancesConfigMasterInstanceFleet = Nothing
  , _eMRClusterJobFlowInstancesConfigMasterInstanceGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigPlacement = Nothing
  , _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigTerminationProtected = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-additionalmastersecuritygroups
emrcjficAdditionalMasterSecurityGroups :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (ValList Text))
emrcjficAdditionalMasterSecurityGroups = lens _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups (\s a -> s { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-additionalslavesecuritygroups
emrcjficAdditionalSlaveSecurityGroups :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (ValList Text))
emrcjficAdditionalSlaveSecurityGroups = lens _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups (\s a -> s { _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-coreinstancefleet
emrcjficCoreInstanceFleet :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterInstanceFleetConfig)
emrcjficCoreInstanceFleet = lens _eMRClusterJobFlowInstancesConfigCoreInstanceFleet (\s a -> s { _eMRClusterJobFlowInstancesConfigCoreInstanceFleet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-coreinstancegroup
emrcjficCoreInstanceGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterInstanceGroupConfig)
emrcjficCoreInstanceGroup = lens _eMRClusterJobFlowInstancesConfigCoreInstanceGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigCoreInstanceGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2keyname
emrcjficEc2KeyName :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEc2KeyName = lens _eMRClusterJobFlowInstancesConfigEc2KeyName (\s a -> s { _eMRClusterJobFlowInstancesConfigEc2KeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2subnetid
emrcjficEc2SubnetId :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEc2SubnetId = lens _eMRClusterJobFlowInstancesConfigEc2SubnetId (\s a -> s { _eMRClusterJobFlowInstancesConfigEc2SubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-ec2subnetids
emrcjficEc2SubnetIds :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (ValList Text))
emrcjficEc2SubnetIds = lens _eMRClusterJobFlowInstancesConfigEc2SubnetIds (\s a -> s { _eMRClusterJobFlowInstancesConfigEc2SubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-emrmanagedmastersecuritygroup
emrcjficEmrManagedMasterSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEmrManagedMasterSecurityGroup = lens _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-emrmanagedslavesecuritygroup
emrcjficEmrManagedSlaveSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEmrManagedSlaveSecurityGroup = lens _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-hadoopversion
emrcjficHadoopVersion :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficHadoopVersion = lens _eMRClusterJobFlowInstancesConfigHadoopVersion (\s a -> s { _eMRClusterJobFlowInstancesConfigHadoopVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-keepjobflowalivewhennosteps
emrcjficKeepJobFlowAliveWhenNoSteps :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Bool))
emrcjficKeepJobFlowAliveWhenNoSteps = lens _eMRClusterJobFlowInstancesConfigKeepJobFlowAliveWhenNoSteps (\s a -> s { _eMRClusterJobFlowInstancesConfigKeepJobFlowAliveWhenNoSteps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-masterinstancefleet
emrcjficMasterInstanceFleet :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterInstanceFleetConfig)
emrcjficMasterInstanceFleet = lens _eMRClusterJobFlowInstancesConfigMasterInstanceFleet (\s a -> s { _eMRClusterJobFlowInstancesConfigMasterInstanceFleet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-masterinstancegroup
emrcjficMasterInstanceGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterInstanceGroupConfig)
emrcjficMasterInstanceGroup = lens _eMRClusterJobFlowInstancesConfigMasterInstanceGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigMasterInstanceGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-placement
emrcjficPlacement :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterPlacementType)
emrcjficPlacement = lens _eMRClusterJobFlowInstancesConfigPlacement (\s a -> s { _eMRClusterJobFlowInstancesConfigPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-serviceaccesssecuritygroup
emrcjficServiceAccessSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficServiceAccessSecurityGroup = lens _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-jobflowinstancesconfig.html#cfn-elasticmapreduce-cluster-jobflowinstancesconfig-terminationprotected
emrcjficTerminationProtected :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Bool))
emrcjficTerminationProtected = lens _eMRClusterJobFlowInstancesConfigTerminationProtected (\s a -> s { _eMRClusterJobFlowInstancesConfigTerminationProtected = a })
