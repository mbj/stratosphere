{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html

module Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterInstanceGroupConfig
import Stratosphere.ResourceProperties.EMRClusterPlacementType

-- | Full data type definition for EMRClusterJobFlowInstancesConfig. See
-- | 'emrClusterJobFlowInstancesConfig' for a more convenient constructor.
data EMRClusterJobFlowInstancesConfig =
  EMRClusterJobFlowInstancesConfig
  { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups :: Maybe [Val Text]
  , _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups :: Maybe [Val Text]
  , _eMRClusterJobFlowInstancesConfigCoreInstanceGroup :: EMRClusterInstanceGroupConfig
  , _eMRClusterJobFlowInstancesConfigEc2KeyName :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEc2SubnetId :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigHadoopVersion :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigMasterInstanceGroup :: EMRClusterInstanceGroupConfig
  , _eMRClusterJobFlowInstancesConfigPlacement :: Maybe EMRClusterPlacementType
  , _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup :: Maybe (Val Text)
  , _eMRClusterJobFlowInstancesConfigTerminationProtected :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON EMRClusterJobFlowInstancesConfig where
  toJSON EMRClusterJobFlowInstancesConfig{..} =
    object
    [ "AdditionalMasterSecurityGroups" .= _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups
    , "AdditionalSlaveSecurityGroups" .= _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups
    , "CoreInstanceGroup" .= _eMRClusterJobFlowInstancesConfigCoreInstanceGroup
    , "Ec2KeyName" .= _eMRClusterJobFlowInstancesConfigEc2KeyName
    , "Ec2SubnetId" .= _eMRClusterJobFlowInstancesConfigEc2SubnetId
    , "EmrManagedMasterSecurityGroup" .= _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup
    , "EmrManagedSlaveSecurityGroup" .= _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup
    , "HadoopVersion" .= _eMRClusterJobFlowInstancesConfigHadoopVersion
    , "MasterInstanceGroup" .= _eMRClusterJobFlowInstancesConfigMasterInstanceGroup
    , "Placement" .= _eMRClusterJobFlowInstancesConfigPlacement
    , "ServiceAccessSecurityGroup" .= _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup
    , "TerminationProtected" .= _eMRClusterJobFlowInstancesConfigTerminationProtected
    ]

instance FromJSON EMRClusterJobFlowInstancesConfig where
  parseJSON (Object obj) =
    EMRClusterJobFlowInstancesConfig <$>
      obj .: "AdditionalMasterSecurityGroups" <*>
      obj .: "AdditionalSlaveSecurityGroups" <*>
      obj .: "CoreInstanceGroup" <*>
      obj .: "Ec2KeyName" <*>
      obj .: "Ec2SubnetId" <*>
      obj .: "EmrManagedMasterSecurityGroup" <*>
      obj .: "EmrManagedSlaveSecurityGroup" <*>
      obj .: "HadoopVersion" <*>
      obj .: "MasterInstanceGroup" <*>
      obj .: "Placement" <*>
      obj .: "ServiceAccessSecurityGroup" <*>
      obj .: "TerminationProtected"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterJobFlowInstancesConfig' containing required
-- | fields as arguments.
emrClusterJobFlowInstancesConfig
  :: EMRClusterInstanceGroupConfig -- ^ 'emrcjficCoreInstanceGroup'
  -> EMRClusterInstanceGroupConfig -- ^ 'emrcjficMasterInstanceGroup'
  -> EMRClusterJobFlowInstancesConfig
emrClusterJobFlowInstancesConfig coreInstanceGrouparg masterInstanceGrouparg =
  EMRClusterJobFlowInstancesConfig
  { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups = Nothing
  , _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups = Nothing
  , _eMRClusterJobFlowInstancesConfigCoreInstanceGroup = coreInstanceGrouparg
  , _eMRClusterJobFlowInstancesConfigEc2KeyName = Nothing
  , _eMRClusterJobFlowInstancesConfigEc2SubnetId = Nothing
  , _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigHadoopVersion = Nothing
  , _eMRClusterJobFlowInstancesConfigMasterInstanceGroup = masterInstanceGrouparg
  , _eMRClusterJobFlowInstancesConfigPlacement = Nothing
  , _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup = Nothing
  , _eMRClusterJobFlowInstancesConfigTerminationProtected = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-additionalmastersecuritygroups
emrcjficAdditionalMasterSecurityGroups :: Lens' EMRClusterJobFlowInstancesConfig (Maybe [Val Text])
emrcjficAdditionalMasterSecurityGroups = lens _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups (\s a -> s { _eMRClusterJobFlowInstancesConfigAdditionalMasterSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-additionalslavesecuritygroups
emrcjficAdditionalSlaveSecurityGroups :: Lens' EMRClusterJobFlowInstancesConfig (Maybe [Val Text])
emrcjficAdditionalSlaveSecurityGroups = lens _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups (\s a -> s { _eMRClusterJobFlowInstancesConfigAdditionalSlaveSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-coreinstancegroup
emrcjficCoreInstanceGroup :: Lens' EMRClusterJobFlowInstancesConfig EMRClusterInstanceGroupConfig
emrcjficCoreInstanceGroup = lens _eMRClusterJobFlowInstancesConfigCoreInstanceGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigCoreInstanceGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-ec2keyname
emrcjficEc2KeyName :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEc2KeyName = lens _eMRClusterJobFlowInstancesConfigEc2KeyName (\s a -> s { _eMRClusterJobFlowInstancesConfigEc2KeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-ec2subnetid
emrcjficEc2SubnetId :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEc2SubnetId = lens _eMRClusterJobFlowInstancesConfigEc2SubnetId (\s a -> s { _eMRClusterJobFlowInstancesConfigEc2SubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-emrmanagedmastersecuritygroup
emrcjficEmrManagedMasterSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEmrManagedMasterSecurityGroup = lens _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigEmrManagedMasterSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-emrmanagedslavesecuritygroup
emrcjficEmrManagedSlaveSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficEmrManagedSlaveSecurityGroup = lens _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigEmrManagedSlaveSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-hadoopversion
emrcjficHadoopVersion :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficHadoopVersion = lens _eMRClusterJobFlowInstancesConfigHadoopVersion (\s a -> s { _eMRClusterJobFlowInstancesConfigHadoopVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-masterinstancegroup
emrcjficMasterInstanceGroup :: Lens' EMRClusterJobFlowInstancesConfig EMRClusterInstanceGroupConfig
emrcjficMasterInstanceGroup = lens _eMRClusterJobFlowInstancesConfigMasterInstanceGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigMasterInstanceGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-placement
emrcjficPlacement :: Lens' EMRClusterJobFlowInstancesConfig (Maybe EMRClusterPlacementType)
emrcjficPlacement = lens _eMRClusterJobFlowInstancesConfigPlacement (\s a -> s { _eMRClusterJobFlowInstancesConfigPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-serviceaccesssecuritygroup
emrcjficServiceAccessSecurityGroup :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Text))
emrcjficServiceAccessSecurityGroup = lens _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup (\s a -> s { _eMRClusterJobFlowInstancesConfigServiceAccessSecurityGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig.html#cfn-emr-cluster-jobflowinstancesconfig-terminationprotected
emrcjficTerminationProtected :: Lens' EMRClusterJobFlowInstancesConfig (Maybe (Val Bool'))
emrcjficTerminationProtected = lens _eMRClusterJobFlowInstancesConfigTerminationProtected (\s a -> s { _eMRClusterJobFlowInstancesConfigTerminationProtected = a })
