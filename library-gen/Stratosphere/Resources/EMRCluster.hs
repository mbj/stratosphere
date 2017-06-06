{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html

module Stratosphere.Resources.EMRCluster where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterApplication
import Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EMRCluster. See 'emrCluster' for a more
-- convenient constructor.
data EMRCluster =
  EMRCluster
  { _eMRClusterAdditionalInfo :: Maybe Object
  , _eMRClusterApplications :: Maybe [EMRClusterApplication]
  , _eMRClusterAutoScalingRole :: Maybe (Val Text)
  , _eMRClusterBootstrapActions :: Maybe [EMRClusterBootstrapActionConfig]
  , _eMRClusterConfigurations :: Maybe [EMRClusterConfiguration]
  , _eMRClusterInstances :: EMRClusterJobFlowInstancesConfig
  , _eMRClusterJobFlowRole :: Val Text
  , _eMRClusterLogUri :: Maybe (Val Text)
  , _eMRClusterName :: Val Text
  , _eMRClusterReleaseLabel :: Maybe (Val Text)
  , _eMRClusterScaleDownBehavior :: Maybe (Val Text)
  , _eMRClusterSecurityConfiguration :: Maybe (Val Text)
  , _eMRClusterServiceRole :: Val Text
  , _eMRClusterTags :: Maybe [Tag]
  , _eMRClusterVisibleToAllUsers :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON EMRCluster where
  toJSON EMRCluster{..} =
    object $
    catMaybes
    [ ("AdditionalInfo" .=) <$> _eMRClusterAdditionalInfo
    , ("Applications" .=) <$> _eMRClusterApplications
    , ("AutoScalingRole" .=) <$> _eMRClusterAutoScalingRole
    , ("BootstrapActions" .=) <$> _eMRClusterBootstrapActions
    , ("Configurations" .=) <$> _eMRClusterConfigurations
    , Just ("Instances" .= _eMRClusterInstances)
    , Just ("JobFlowRole" .= _eMRClusterJobFlowRole)
    , ("LogUri" .=) <$> _eMRClusterLogUri
    , Just ("Name" .= _eMRClusterName)
    , ("ReleaseLabel" .=) <$> _eMRClusterReleaseLabel
    , ("ScaleDownBehavior" .=) <$> _eMRClusterScaleDownBehavior
    , ("SecurityConfiguration" .=) <$> _eMRClusterSecurityConfiguration
    , Just ("ServiceRole" .= _eMRClusterServiceRole)
    , ("Tags" .=) <$> _eMRClusterTags
    , ("VisibleToAllUsers" .=) <$> _eMRClusterVisibleToAllUsers
    ]

instance FromJSON EMRCluster where
  parseJSON (Object obj) =
    EMRCluster <$>
      obj .:? "AdditionalInfo" <*>
      obj .:? "Applications" <*>
      obj .:? "AutoScalingRole" <*>
      obj .:? "BootstrapActions" <*>
      obj .:? "Configurations" <*>
      obj .: "Instances" <*>
      obj .: "JobFlowRole" <*>
      obj .:? "LogUri" <*>
      obj .: "Name" <*>
      obj .:? "ReleaseLabel" <*>
      obj .:? "ScaleDownBehavior" <*>
      obj .:? "SecurityConfiguration" <*>
      obj .: "ServiceRole" <*>
      obj .:? "Tags" <*>
      obj .:? "VisibleToAllUsers"
  parseJSON _ = mempty

-- | Constructor for 'EMRCluster' containing required fields as arguments.
emrCluster
  :: EMRClusterJobFlowInstancesConfig -- ^ 'emrcInstances'
  -> Val Text -- ^ 'emrcJobFlowRole'
  -> Val Text -- ^ 'emrcName'
  -> Val Text -- ^ 'emrcServiceRole'
  -> EMRCluster
emrCluster instancesarg jobFlowRolearg namearg serviceRolearg =
  EMRCluster
  { _eMRClusterAdditionalInfo = Nothing
  , _eMRClusterApplications = Nothing
  , _eMRClusterAutoScalingRole = Nothing
  , _eMRClusterBootstrapActions = Nothing
  , _eMRClusterConfigurations = Nothing
  , _eMRClusterInstances = instancesarg
  , _eMRClusterJobFlowRole = jobFlowRolearg
  , _eMRClusterLogUri = Nothing
  , _eMRClusterName = namearg
  , _eMRClusterReleaseLabel = Nothing
  , _eMRClusterScaleDownBehavior = Nothing
  , _eMRClusterSecurityConfiguration = Nothing
  , _eMRClusterServiceRole = serviceRolearg
  , _eMRClusterTags = Nothing
  , _eMRClusterVisibleToAllUsers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-additionalinfo
emrcAdditionalInfo :: Lens' EMRCluster (Maybe Object)
emrcAdditionalInfo = lens _eMRClusterAdditionalInfo (\s a -> s { _eMRClusterAdditionalInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-applications
emrcApplications :: Lens' EMRCluster (Maybe [EMRClusterApplication])
emrcApplications = lens _eMRClusterApplications (\s a -> s { _eMRClusterApplications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-elasticmapreduce-cluster-autoscalingrole
emrcAutoScalingRole :: Lens' EMRCluster (Maybe (Val Text))
emrcAutoScalingRole = lens _eMRClusterAutoScalingRole (\s a -> s { _eMRClusterAutoScalingRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-bootstrapactions
emrcBootstrapActions :: Lens' EMRCluster (Maybe [EMRClusterBootstrapActionConfig])
emrcBootstrapActions = lens _eMRClusterBootstrapActions (\s a -> s { _eMRClusterBootstrapActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-configurations
emrcConfigurations :: Lens' EMRCluster (Maybe [EMRClusterConfiguration])
emrcConfigurations = lens _eMRClusterConfigurations (\s a -> s { _eMRClusterConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-instances
emrcInstances :: Lens' EMRCluster EMRClusterJobFlowInstancesConfig
emrcInstances = lens _eMRClusterInstances (\s a -> s { _eMRClusterInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-jobflowrole
emrcJobFlowRole :: Lens' EMRCluster (Val Text)
emrcJobFlowRole = lens _eMRClusterJobFlowRole (\s a -> s { _eMRClusterJobFlowRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-loguri
emrcLogUri :: Lens' EMRCluster (Maybe (Val Text))
emrcLogUri = lens _eMRClusterLogUri (\s a -> s { _eMRClusterLogUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-name
emrcName :: Lens' EMRCluster (Val Text)
emrcName = lens _eMRClusterName (\s a -> s { _eMRClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-releaselabel
emrcReleaseLabel :: Lens' EMRCluster (Maybe (Val Text))
emrcReleaseLabel = lens _eMRClusterReleaseLabel (\s a -> s { _eMRClusterReleaseLabel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-elasticmapreduce-cluster-scaledownbehavior
emrcScaleDownBehavior :: Lens' EMRCluster (Maybe (Val Text))
emrcScaleDownBehavior = lens _eMRClusterScaleDownBehavior (\s a -> s { _eMRClusterScaleDownBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-securityconfiguration
emrcSecurityConfiguration :: Lens' EMRCluster (Maybe (Val Text))
emrcSecurityConfiguration = lens _eMRClusterSecurityConfiguration (\s a -> s { _eMRClusterSecurityConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-servicerole
emrcServiceRole :: Lens' EMRCluster (Val Text)
emrcServiceRole = lens _eMRClusterServiceRole (\s a -> s { _eMRClusterServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-elasticmapreduce-cluster-tags
emrcTags :: Lens' EMRCluster (Maybe [Tag])
emrcTags = lens _eMRClusterTags (\s a -> s { _eMRClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-visibletoallusers
emrcVisibleToAllUsers :: Lens' EMRCluster (Maybe (Val Bool'))
emrcVisibleToAllUsers = lens _eMRClusterVisibleToAllUsers (\s a -> s { _eMRClusterVisibleToAllUsers = a })
