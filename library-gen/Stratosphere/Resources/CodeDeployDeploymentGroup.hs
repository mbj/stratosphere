{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html

module Stratosphere.Resources.CodeDeployDeploymentGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupAlarmConfiguration
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeployment
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEC2TagFilter
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTagFilter
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTriggerConfig

-- | Full data type definition for CodeDeployDeploymentGroup. See
-- 'codeDeployDeploymentGroup' for a more convenient constructor.
data CodeDeployDeploymentGroup =
  CodeDeployDeploymentGroup
  { _codeDeployDeploymentGroupAlarmConfiguration :: Maybe CodeDeployDeploymentGroupAlarmConfiguration
  , _codeDeployDeploymentGroupApplicationName :: Val Text
  , _codeDeployDeploymentGroupAutoScalingGroups :: Maybe (ValList Text)
  , _codeDeployDeploymentGroupDeployment :: Maybe CodeDeployDeploymentGroupDeployment
  , _codeDeployDeploymentGroupDeploymentConfigName :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentGroupName :: Maybe (Val Text)
  , _codeDeployDeploymentGroupEc2TagFilters :: Maybe [CodeDeployDeploymentGroupEC2TagFilter]
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilters :: Maybe [CodeDeployDeploymentGroupTagFilter]
  , _codeDeployDeploymentGroupServiceRoleArn :: Val Text
  , _codeDeployDeploymentGroupTriggerConfigurations :: Maybe [CodeDeployDeploymentGroupTriggerConfig]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroup where
  toJSON CodeDeployDeploymentGroup{..} =
    object $
    catMaybes
    [ fmap (("AlarmConfiguration",) . toJSON) _codeDeployDeploymentGroupAlarmConfiguration
    , (Just . ("ApplicationName",) . toJSON) _codeDeployDeploymentGroupApplicationName
    , fmap (("AutoScalingGroups",) . toJSON) _codeDeployDeploymentGroupAutoScalingGroups
    , fmap (("Deployment",) . toJSON) _codeDeployDeploymentGroupDeployment
    , fmap (("DeploymentConfigName",) . toJSON) _codeDeployDeploymentGroupDeploymentConfigName
    , fmap (("DeploymentGroupName",) . toJSON) _codeDeployDeploymentGroupDeploymentGroupName
    , fmap (("Ec2TagFilters",) . toJSON) _codeDeployDeploymentGroupEc2TagFilters
    , fmap (("OnPremisesInstanceTagFilters",) . toJSON) _codeDeployDeploymentGroupOnPremisesInstanceTagFilters
    , (Just . ("ServiceRoleArn",) . toJSON) _codeDeployDeploymentGroupServiceRoleArn
    , fmap (("TriggerConfigurations",) . toJSON) _codeDeployDeploymentGroupTriggerConfigurations
    ]

instance FromJSON CodeDeployDeploymentGroup where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroup <$>
      (obj .:? "AlarmConfiguration") <*>
      (obj .: "ApplicationName") <*>
      (obj .:? "AutoScalingGroups") <*>
      (obj .:? "Deployment") <*>
      (obj .:? "DeploymentConfigName") <*>
      (obj .:? "DeploymentGroupName") <*>
      (obj .:? "Ec2TagFilters") <*>
      (obj .:? "OnPremisesInstanceTagFilters") <*>
      (obj .: "ServiceRoleArn") <*>
      (obj .:? "TriggerConfigurations")
  parseJSON _ = mempty

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
  , _codeDeployDeploymentGroupAutoScalingGroups = Nothing
  , _codeDeployDeploymentGroupDeployment = Nothing
  , _codeDeployDeploymentGroupDeploymentConfigName = Nothing
  , _codeDeployDeploymentGroupDeploymentGroupName = Nothing
  , _codeDeployDeploymentGroupEc2TagFilters = Nothing
  , _codeDeployDeploymentGroupOnPremisesInstanceTagFilters = Nothing
  , _codeDeployDeploymentGroupServiceRoleArn = serviceRoleArnarg
  , _codeDeployDeploymentGroupTriggerConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-alarmconfiguration
cddgAlarmConfiguration :: Lens' CodeDeployDeploymentGroup (Maybe CodeDeployDeploymentGroupAlarmConfiguration)
cddgAlarmConfiguration = lens _codeDeployDeploymentGroupAlarmConfiguration (\s a -> s { _codeDeployDeploymentGroupAlarmConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-applicationname
cddgApplicationName :: Lens' CodeDeployDeploymentGroup (Val Text)
cddgApplicationName = lens _codeDeployDeploymentGroupApplicationName (\s a -> s { _codeDeployDeploymentGroupApplicationName = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-ec2tagfilters
cddgEc2TagFilters :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupEC2TagFilter])
cddgEc2TagFilters = lens _codeDeployDeploymentGroupEc2TagFilters (\s a -> s { _codeDeployDeploymentGroupEc2TagFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-onpremisesinstancetagfilters
cddgOnPremisesInstanceTagFilters :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupTagFilter])
cddgOnPremisesInstanceTagFilters = lens _codeDeployDeploymentGroupOnPremisesInstanceTagFilters (\s a -> s { _codeDeployDeploymentGroupOnPremisesInstanceTagFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-servicerolearn
cddgServiceRoleArn :: Lens' CodeDeployDeploymentGroup (Val Text)
cddgServiceRoleArn = lens _codeDeployDeploymentGroupServiceRoleArn (\s a -> s { _codeDeployDeploymentGroupServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html#cfn-codedeploy-deploymentgroup-triggerconfigurations
cddgTriggerConfigurations :: Lens' CodeDeployDeploymentGroup (Maybe [CodeDeployDeploymentGroupTriggerConfig])
cddgTriggerConfigurations = lens _codeDeployDeploymentGroupTriggerConfigurations (\s a -> s { _codeDeployDeploymentGroupTriggerConfigurations = a })
