{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html

module Stratosphere.Resources.EMRCluster where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterApplication
import Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig
import Stratosphere.ResourceProperties.EMRClusterConfiguration
import Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EMRCluster. See 'emrCluster' for a more
-- | convenient constructor.
data EMRCluster =
  EMRCluster
  { _eMRClusterAdditionalInfo :: Maybe Object
  , _eMRClusterApplications :: Maybe [EMRClusterApplication]
  , _eMRClusterBootstrapActions :: Maybe [EMRClusterBootstrapActionConfig]
  , _eMRClusterConfigurations :: Maybe [EMRClusterConfiguration]
  , _eMRClusterInstances :: EMRClusterJobFlowInstancesConfig
  , _eMRClusterJobFlowRole :: Val Text
  , _eMRClusterLogUri :: Maybe (Val Text)
  , _eMRClusterName :: Val Text
  , _eMRClusterReleaseLabel :: Maybe (Val Text)
  , _eMRClusterServiceRole :: Val Text
  , _eMRClusterTags :: Maybe [Tag]
  , _eMRClusterVisibleToAllUsers :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON EMRCluster where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON EMRCluster where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

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
  , _eMRClusterBootstrapActions = Nothing
  , _eMRClusterConfigurations = Nothing
  , _eMRClusterInstances = instancesarg
  , _eMRClusterJobFlowRole = jobFlowRolearg
  , _eMRClusterLogUri = Nothing
  , _eMRClusterName = namearg
  , _eMRClusterReleaseLabel = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-servicerole
emrcServiceRole :: Lens' EMRCluster (Val Text)
emrcServiceRole = lens _eMRClusterServiceRole (\s a -> s { _eMRClusterServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-elasticmapreduce-cluster-tags
emrcTags :: Lens' EMRCluster (Maybe [Tag])
emrcTags = lens _eMRClusterTags (\s a -> s { _eMRClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-cluster.html#cfn-emr-cluster-visibletoallusers
emrcVisibleToAllUsers :: Lens' EMRCluster (Maybe (Val Bool'))
emrcVisibleToAllUsers = lens _eMRClusterVisibleToAllUsers (\s a -> s { _eMRClusterVisibleToAllUsers = a })
