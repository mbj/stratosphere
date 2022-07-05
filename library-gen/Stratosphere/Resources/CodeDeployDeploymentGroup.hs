{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html

module Stratosphere.Resources.CodeDeployDeploymentGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarmConfiguration
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAutoRollbackConfiguration
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeployment
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeploymentStyle
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagFilter
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagSet
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupLoadBalancerInfo
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTagFilter
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesTagSet
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTriggerConfig

-- | Full data type definition for CodeDeployDeploymentGroup. See
-- 'codeDeployDeploymentGroup' for a more convenient constructor.
data CodeDeployDeploymentGroup =
  CodeDeployDeploymentGroup
  { _codeDeployDeploymentGroupAlarmConfiguration :: Maybe CodeDeployDeploymentGroupAlarmConfiguration
  , _codeDeployDeploymentGroupApplicationName :: Val Text
  , _codeDeployDeploymentGroupAutoRollbackConfiguration :: Maybe CodeDeployDeploymentGroupAutoRollbackConfiguration
  , _codeDeployDeploymentGroupAutoScalingGroups :: Maybe (ValList Text)
  , _codeDeployDeploymentGroupDeployment :: Maybe CodeDeployDeploymentGroupDeployment
  , _codeDeployDeploymentGroupDeploymentConfigName :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentGroupName :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentStyle :: Maybe CodeDeployDeploymentGroupDeploymentStyle
  , _codeDeployDeploymentGroupEc2TagFilters :: Maybe [CodeDeployDeploymentGroupEC2TagFilter]
  , _codeDeployDeploymentGroupEc2TagSet :: Maybe CodeDeployDeploymentGroupEC2TagSet
  , _codeDeployDeploymentGroupLoadBalancerInfo :: Maybe CodeDeployDeploymentGroupLoadBalancerInfo
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilters :: Maybe [CodeDeployDeploymentGroupTagFilter]
  , _codeDeployDeploymentGroupOnPremisesTagSet :: Maybe CodeDeployDeploymentGroupOnPremisesTagSet
  , _codeDeployDeploymentGroupServiceRoleArn :: Val Text
  , _codeDeployDeploymentGroupTriggerConfigurations :: Maybe [CodeDeployDeploymentGroupTriggerConfig]
  } deriving (Show, Eq)

instance ToResourceProperties CodeDeployDeploymentGroup where
  toResourceProperties CodeDeployDeploymentGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeDeploy::DeploymentGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AlarmConfiguration",) . toJSON) _codeDeployDeploymentGroupAlarmConfiguration
        , (Just . ("ApplicationName",) . toJSON) _codeDeployDeploymentGroupApplicationName
        , fmap (("AutoRollbackConfiguration",) . toJSON) _codeDeployDeploymentGroupAutoRollbackConfiguration
        , fmap (("AutoScalingGroups",) . toJSON) _codeDeployDeploymentGroupAutoScalingGroups
        , fmap (("Deployment",) . toJSON) _codeDeployDeploymentGroupDeployment
        , fmap (("DeploymentConfigName",) . toJSON) _codeDeployDeploymentGroupDeploymentConfigName
        , fmap (("DeploymentGroupName",) . toJSON) _codeDeployDeploymentGroupDeploymentGroupName
        , fmap (("DeploymentStyle",) . toJSON) _codeDeployDeploymentGroupDeploymentStyle
        , fmap (("Ec2TagFilters",) . toJSON) _codeDeployDeploymentGroupEc2TagFilters
        , fmap (("Ec2TagSet",) . toJSON) _codeDeployDeploymentGroupEc2TagSet
        , fmap (("LoadBalancerInfo",) . toJSON) _codeDeployDeploymentGroupLoadBalancerInfo
        , fmap (("OnPremisesInstanceTagFilters",) . toJSON) _codeDeployDeploymentGroupOnPremisesInstanceTagFilters
        , fmap (("OnPremisesTagSet",) . toJSON) _codeDeployDeploymentGroupOnPremisesTagSet
        , (Just . ("ServiceRoleArn",) . toJSON) _codeDeployDeploymentGroupServiceRoleArn
        , fmap (("TriggerConfigurations",) . toJSON) _codeDeployDeploymentGroupTriggerConfigurations
        ]
    }

-- | Constructor for 'CodeDeployDeploymentGroup' containing required fields as
-- arguments.
codeDeployDeploymentGroup
  :: Val Text -- ^ 'cddgApplicationName'
  -> Val Text -- ^ 'cddgServiceRoleArn'
  -> CodeDeployDeploymentGroup
codeDeployDeploymentGroup applicationNamearg serviceRoleArnarg =
  CodeDeployDeploymentGroup
  { _codeDeployDeploymentGroupAlarmConfiguration = Nothing
  , _codeDeployDeploymentGroupApplicationName = applicationNamearg
  , _codeDeployDeploymentGroupAutoRollbackConfiguration = Nothing
  , _codeDeployDeploymentGroupAutoScalingGroups = Nothing
  , _codeDeployDeploymentGroupDeployment = Nothing
  , _codeDeployDeploymentGroupDeploymentConfigName = Nothing
  , _codeDeployDeploymentGroupDeploymentGroupName = Nothing
  , _codeDeployDeploymentGroupDeploymentStyle = Nothing
  , _codeDeployDeploymentGroupEc2TagFilters = Nothing
  , _codeDeployDeploymentGroupEc2TagSet = Nothing
  , _codeDeployDeploymentGroupLoadBalancerInfo = Nothing
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilters = Nothing
  , _codeDeployDeploymentGroupOnPremisesTagSet = Nothing
  , _codeDeployDeploymentGroupServiceRoleArn = serviceRoleArnarg
  , _codeDeployDeploymentGroupTriggerConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-alarmconfiguration
cddgAlarmConfiguration :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupAlarmConfiguration)
cddgAlarmConfiguration = lens _codeDeployDeploymentGroupAlarmConfiguration (\s a -> s { _codeDeployDeploymentGroupAlarmConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-applicationname
cddgApplicationName :: Lens' CodeDeployDeploymentGroup (Val Text)
cddgApplicationName = lens _codeDeployDeploymentGroupApplicationName (\s a -> s { _codeDeployDeploymentGroupApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration
cddgAutoRollbackConfiguration :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupAutoRollbackConfiguration)
cddgAutoRollbackConfiguration = lens _codeDeployDeploymentGroupAutoRollbackConfiguration (\s a -> s { _codeDeployDeploymentGroupAutoRollbackConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-autoscalinggroups
cddgAutoScalingGroups :: Lens' CodeDeployDeploymentGroup (Maybe (ValList Text))
cddgAutoScalingGroups = lens _codeDeployDeploymentGroupAutoScalingGroups (\s a -> s { _codeDeployDeploymentGroupAutoScalingGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deployment
cddgDeployment :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupDeployment)
cddgDeployment = lens _codeDeployDeploymentGroupDeployment (\s a -> s { _codeDeployDeploymentGroupDeployment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentconfigname
cddgDeploymentConfigName :: Lens' CodeDeployDeploymentGroup (Maybe (Val Text))
cddgDeploymentConfigName = lens _codeDeployDeploymentGroupDeploymentConfigName (\s a -> s { _codeDeployDeploymentGroupDeploymentConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentgroupname
cddgDeploymentGroupName :: Lens' CodeDeployDeploymentGroup (Maybe (Val Text))
cddgDeploymentGroupName = lens _codeDeployDeploymentGroupDeploymentGroupName (\s a -> s { _codeDeployDeploymentGroupDeploymentGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-deploymentstyle
cddgDeploymentStyle :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupDeploymentStyle)
cddgDeploymentStyle = lens _codeDeployDeploymentGroupDeploymentStyle (\s a -> s { _codeDeployDeploymentGroupDeploymentStyle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagfilters
cddgEc2TagFilters :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupEC2TagFilter])
cddgEc2TagFilters = lens _codeDeployDeploymentGroupEc2TagFilters (\s a -> s { _codeDeployDeploymentGroupEc2TagFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagset
cddgEc2TagSet :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupEC2TagSet)
cddgEc2TagSet = lens _codeDeployDeploymentGroupEc2TagSet (\s a -> s { _codeDeployDeploymentGroupEc2TagSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo
cddgLoadBalancerInfo :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupLoadBalancerInfo)
cddgLoadBalancerInfo = lens _codeDeployDeploymentGroupLoadBalancerInfo (\s a -> s { _codeDeployDeploymentGroupLoadBalancerInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisesinstancetagfilters
cddgOnPremisesInstanceTagFilters :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupTagFilter])
cddgOnPremisesInstanceTagFilters = lens _codeDeployDeploymentGroupOnPremisesInstanceTagFilters (\s a -> s { _codeDeployDeploymentGroupOnPremisesInstanceTagFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisestagset
cddgOnPremisesTagSet :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupOnPremisesTagSet)
cddgOnPremisesTagSet = lens _codeDeployDeploymentGroupOnPremisesTagSet (\s a -> s { _codeDeployDeploymentGroupOnPremisesTagSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-servicerolearn
cddgServiceRoleArn :: Lens' CodeDeployDeploymentGroup (Val Text)
cddgServiceRoleArn = lens _codeDeployDeploymentGroupServiceRoleArn (\s a -> s { _codeDeployDeploymentGroupServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-triggerconfigurations
cddgTriggerConfigurations :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupTriggerConfig])
cddgTriggerConfigurations = lens _codeDeployDeploymentGroupTriggerConfigurations (\s a -> s { _codeDeployDeploymentGroupTriggerConfigurations = a })
