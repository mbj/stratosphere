{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html

module Stratosphere.Resources.EMRCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterApplication
import Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig
import Stratosphere.ResourceProperties.EMRClusterKerberosAttributes
import Stratosphere.ResourceProperties.EMRClusterStepConfig
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
  , _eMRClusterCustomAmiId :: Maybe (Val Text)
  , _eMRClusterEbsRootVolumeSize :: Maybe (Val Integer)
  , _eMRClusterInstances :: EMRClusterJobFlowInstancesConfig
  , _eMRClusterJobFlowRole :: Val Text
  , _eMRClusterKerberosAttributes :: Maybe EMRClusterKerberosAttributes
  , _eMRClusterLogUri :: Maybe (Val Text)
  , _eMRClusterName :: Val Text
  , _eMRClusterReleaseLabel :: Maybe (Val Text)
  , _eMRClusterScaleDownBehavior :: Maybe (Val Text)
  , _eMRClusterSecurityConfiguration :: Maybe (Val Text)
  , _eMRClusterServiceRole :: Val Text
  , _eMRClusterSteps :: Maybe [EMRClusterStepConfig]
  , _eMRClusterTags :: Maybe [Tag]
  , _eMRClusterVisibleToAllUsers :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties EMRCluster where
  toResourceProperties EMRCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EMR::Cluster"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AdditionalInfo",) . toJSON) _eMRClusterAdditionalInfo
        , fmap (("Applications",) . toJSON) _eMRClusterApplications
        , fmap (("AutoScalingRole",) . toJSON) _eMRClusterAutoScalingRole
        , fmap (("BootstrapActions",) . toJSON) _eMRClusterBootstrapActions
        , fmap (("Configurations",) . toJSON) _eMRClusterConfigurations
        , fmap (("CustomAmiId",) . toJSON) _eMRClusterCustomAmiId
        , fmap (("EbsRootVolumeSize",) . toJSON) _eMRClusterEbsRootVolumeSize
        , (Just . ("Instances",) . toJSON) _eMRClusterInstances
        , (Just . ("JobFlowRole",) . toJSON) _eMRClusterJobFlowRole
        , fmap (("KerberosAttributes",) . toJSON) _eMRClusterKerberosAttributes
        , fmap (("LogUri",) . toJSON) _eMRClusterLogUri
        , (Just . ("Name",) . toJSON) _eMRClusterName
        , fmap (("ReleaseLabel",) . toJSON) _eMRClusterReleaseLabel
        , fmap (("ScaleDownBehavior",) . toJSON) _eMRClusterScaleDownBehavior
        , fmap (("SecurityConfiguration",) . toJSON) _eMRClusterSecurityConfiguration
        , (Just . ("ServiceRole",) . toJSON) _eMRClusterServiceRole
        , fmap (("Steps",) . toJSON) _eMRClusterSteps
        , fmap (("Tags",) . toJSON) _eMRClusterTags
        , fmap (("VisibleToAllUsers",) . toJSON) _eMRClusterVisibleToAllUsers
        ]
    }

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
  , _eMRClusterCustomAmiId = Nothing
  , _eMRClusterEbsRootVolumeSize = Nothing
  , _eMRClusterInstances = instancesarg
  , _eMRClusterJobFlowRole = jobFlowRolearg
  , _eMRClusterKerberosAttributes = Nothing
  , _eMRClusterLogUri = Nothing
  , _eMRClusterName = namearg
  , _eMRClusterReleaseLabel = Nothing
  , _eMRClusterScaleDownBehavior = Nothing
  , _eMRClusterSecurityConfiguration = Nothing
  , _eMRClusterServiceRole = serviceRolearg
  , _eMRClusterSteps = Nothing
  , _eMRClusterTags = Nothing
  , _eMRClusterVisibleToAllUsers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-additionalinfo
emrcAdditionalInfo :: Lens' EMRCluster (Maybe Object)
emrcAdditionalInfo = lens _eMRClusterAdditionalInfo (\s a -> s { _eMRClusterAdditionalInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-applications
emrcApplications :: Lens' EMRCluster (Maybe [EMRClusterApplication])
emrcApplications = lens _eMRClusterApplications (\s a -> s { _eMRClusterApplications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-autoscalingrole
emrcAutoScalingRole :: Lens' EMRCluster (Maybe (Val Text))
emrcAutoScalingRole = lens _eMRClusterAutoScalingRole (\s a -> s { _eMRClusterAutoScalingRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-bootstrapactions
emrcBootstrapActions :: Lens' EMRCluster (Maybe [EMRClusterBootstrapActionConfig])
emrcBootstrapActions = lens _eMRClusterBootstrapActions (\s a -> s { _eMRClusterBootstrapActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-configurations
emrcConfigurations :: Lens' EMRCluster (Maybe [EMRClusterConfiguration])
emrcConfigurations = lens _eMRClusterConfigurations (\s a -> s { _eMRClusterConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-customamiid
emrcCustomAmiId :: Lens' EMRCluster (Maybe (Val Text))
emrcCustomAmiId = lens _eMRClusterCustomAmiId (\s a -> s { _eMRClusterCustomAmiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-ebsrootvolumesize
emrcEbsRootVolumeSize :: Lens' EMRCluster (Maybe (Val Integer))
emrcEbsRootVolumeSize = lens _eMRClusterEbsRootVolumeSize (\s a -> s { _eMRClusterEbsRootVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-instances
emrcInstances :: Lens' EMRCluster EMRClusterJobFlowInstancesConfig
emrcInstances = lens _eMRClusterInstances (\s a -> s { _eMRClusterInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-jobflowrole
emrcJobFlowRole :: Lens' EMRCluster (Val Text)
emrcJobFlowRole = lens _eMRClusterJobFlowRole (\s a -> s { _eMRClusterJobFlowRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-kerberosattributes
emrcKerberosAttributes :: Lens' EMRCluster (Maybe EMRClusterKerberosAttributes)
emrcKerberosAttributes = lens _eMRClusterKerberosAttributes (\s a -> s { _eMRClusterKerberosAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-loguri
emrcLogUri :: Lens' EMRCluster (Maybe (Val Text))
emrcLogUri = lens _eMRClusterLogUri (\s a -> s { _eMRClusterLogUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-name
emrcName :: Lens' EMRCluster (Val Text)
emrcName = lens _eMRClusterName (\s a -> s { _eMRClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-releaselabel
emrcReleaseLabel :: Lens' EMRCluster (Maybe (Val Text))
emrcReleaseLabel = lens _eMRClusterReleaseLabel (\s a -> s { _eMRClusterReleaseLabel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-scaledownbehavior
emrcScaleDownBehavior :: Lens' EMRCluster (Maybe (Val Text))
emrcScaleDownBehavior = lens _eMRClusterScaleDownBehavior (\s a -> s { _eMRClusterScaleDownBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-securityconfiguration
emrcSecurityConfiguration :: Lens' EMRCluster (Maybe (Val Text))
emrcSecurityConfiguration = lens _eMRClusterSecurityConfiguration (\s a -> s { _eMRClusterSecurityConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-servicerole
emrcServiceRole :: Lens' EMRCluster (Val Text)
emrcServiceRole = lens _eMRClusterServiceRole (\s a -> s { _eMRClusterServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-steps
emrcSteps :: Lens' EMRCluster (Maybe [EMRClusterStepConfig])
emrcSteps = lens _eMRClusterSteps (\s a -> s { _eMRClusterSteps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-tags
emrcTags :: Lens' EMRCluster (Maybe [Tag])
emrcTags = lens _eMRClusterTags (\s a -> s { _eMRClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticmapreduce-cluster.html#cfn-elasticmapreduce-cluster-visibletoallusers
emrcVisibleToAllUsers :: Lens' EMRCluster (Maybe (Val Bool))
emrcVisibleToAllUsers = lens _eMRClusterVisibleToAllUsers (\s a -> s { _eMRClusterVisibleToAllUsers = a })
