{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html

module Stratosphere.Resources.AutoScalingAutoScalingGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateSpecification
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLifecycleHookSpecification
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMetricsCollection
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMixedInstancesPolicy
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfiguration
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupTagProperty

-- | Full data type definition for AutoScalingAutoScalingGroup. See
-- 'autoScalingAutoScalingGroup' for a more convenient constructor.
data AutoScalingAutoScalingGroup =
  AutoScalingAutoScalingGroup
  { _autoScalingAutoScalingGroupAutoScalingGroupName :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupAvailabilityZones :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupCooldown :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupDesiredCapacity :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupHealthCheckGracePeriod :: Maybe (Val Integer)
  , _autoScalingAutoScalingGroupHealthCheckType :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupInstanceId :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchConfigurationName :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchTemplate :: Maybe AutoScalingAutoScalingGroupLaunchTemplateSpecification
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationList :: Maybe [AutoScalingAutoScalingGroupLifecycleHookSpecification]
  , _autoScalingAutoScalingGroupLoadBalancerNames :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupMaxInstanceLifetime :: Maybe (Val Integer)
  , _autoScalingAutoScalingGroupMaxSize :: Val Text
  , _autoScalingAutoScalingGroupMetricsCollection :: Maybe [AutoScalingAutoScalingGroupMetricsCollection]
  , _autoScalingAutoScalingGroupMinSize :: Val Text
  , _autoScalingAutoScalingGroupMixedInstancesPolicy :: Maybe AutoScalingAutoScalingGroupMixedInstancesPolicy
  , _autoScalingAutoScalingGroupNewInstancesProtectedFromScaleIn :: Maybe (Val Bool)
  , _autoScalingAutoScalingGroupNotificationConfigurations :: Maybe [AutoScalingAutoScalingGroupNotificationConfiguration]
  , _autoScalingAutoScalingGroupPlacementGroup :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupServiceLinkedRoleARN :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupTags :: Maybe [AutoScalingAutoScalingGroupTagProperty]
  , _autoScalingAutoScalingGroupTargetGroupARNs :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupTerminationPolicies :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupVPCZoneIdentifier :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties AutoScalingAutoScalingGroup where
  toResourceProperties AutoScalingAutoScalingGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AutoScaling::AutoScalingGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoScalingGroupName",) . toJSON) _autoScalingAutoScalingGroupAutoScalingGroupName
        , fmap (("AvailabilityZones",) . toJSON) _autoScalingAutoScalingGroupAvailabilityZones
        , fmap (("Cooldown",) . toJSON) _autoScalingAutoScalingGroupCooldown
        , fmap (("DesiredCapacity",) . toJSON) _autoScalingAutoScalingGroupDesiredCapacity
        , fmap (("HealthCheckGracePeriod",) . toJSON) _autoScalingAutoScalingGroupHealthCheckGracePeriod
        , fmap (("HealthCheckType",) . toJSON) _autoScalingAutoScalingGroupHealthCheckType
        , fmap (("InstanceId",) . toJSON) _autoScalingAutoScalingGroupInstanceId
        , fmap (("LaunchConfigurationName",) . toJSON) _autoScalingAutoScalingGroupLaunchConfigurationName
        , fmap (("LaunchTemplate",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplate
        , fmap (("LifecycleHookSpecificationList",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationList
        , fmap (("LoadBalancerNames",) . toJSON) _autoScalingAutoScalingGroupLoadBalancerNames
        , fmap (("MaxInstanceLifetime",) . toJSON) _autoScalingAutoScalingGroupMaxInstanceLifetime
        , (Just . ("MaxSize",) . toJSON) _autoScalingAutoScalingGroupMaxSize
        , fmap (("MetricsCollection",) . toJSON) _autoScalingAutoScalingGroupMetricsCollection
        , (Just . ("MinSize",) . toJSON) _autoScalingAutoScalingGroupMinSize
        , fmap (("MixedInstancesPolicy",) . toJSON) _autoScalingAutoScalingGroupMixedInstancesPolicy
        , fmap (("NewInstancesProtectedFromScaleIn",) . toJSON) _autoScalingAutoScalingGroupNewInstancesProtectedFromScaleIn
        , fmap (("NotificationConfigurations",) . toJSON) _autoScalingAutoScalingGroupNotificationConfigurations
        , fmap (("PlacementGroup",) . toJSON) _autoScalingAutoScalingGroupPlacementGroup
        , fmap (("ServiceLinkedRoleARN",) . toJSON) _autoScalingAutoScalingGroupServiceLinkedRoleARN
        , fmap (("Tags",) . toJSON) _autoScalingAutoScalingGroupTags
        , fmap (("TargetGroupARNs",) . toJSON) _autoScalingAutoScalingGroupTargetGroupARNs
        , fmap (("TerminationPolicies",) . toJSON) _autoScalingAutoScalingGroupTerminationPolicies
        , fmap (("VPCZoneIdentifier",) . toJSON) _autoScalingAutoScalingGroupVPCZoneIdentifier
        ]
    }

-- | Constructor for 'AutoScalingAutoScalingGroup' containing required fields
-- as arguments.
autoScalingAutoScalingGroup
  :: Val Text -- ^ 'asasgMaxSize'
  -> Val Text -- ^ 'asasgMinSize'
  -> AutoScalingAutoScalingGroup
autoScalingAutoScalingGroup maxSizearg minSizearg =
  AutoScalingAutoScalingGroup
  { _autoScalingAutoScalingGroupAutoScalingGroupName = Nothing
  , _autoScalingAutoScalingGroupAvailabilityZones = Nothing
  , _autoScalingAutoScalingGroupCooldown = Nothing
  , _autoScalingAutoScalingGroupDesiredCapacity = Nothing
  , _autoScalingAutoScalingGroupHealthCheckGracePeriod = Nothing
  , _autoScalingAutoScalingGroupHealthCheckType = Nothing
  , _autoScalingAutoScalingGroupInstanceId = Nothing
  , _autoScalingAutoScalingGroupLaunchConfigurationName = Nothing
  , _autoScalingAutoScalingGroupLaunchTemplate = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationList = Nothing
  , _autoScalingAutoScalingGroupLoadBalancerNames = Nothing
  , _autoScalingAutoScalingGroupMaxInstanceLifetime = Nothing
  , _autoScalingAutoScalingGroupMaxSize = maxSizearg
  , _autoScalingAutoScalingGroupMetricsCollection = Nothing
  , _autoScalingAutoScalingGroupMinSize = minSizearg
  , _autoScalingAutoScalingGroupMixedInstancesPolicy = Nothing
  , _autoScalingAutoScalingGroupNewInstancesProtectedFromScaleIn = Nothing
  , _autoScalingAutoScalingGroupNotificationConfigurations = Nothing
  , _autoScalingAutoScalingGroupPlacementGroup = Nothing
  , _autoScalingAutoScalingGroupServiceLinkedRoleARN = Nothing
  , _autoScalingAutoScalingGroupTags = Nothing
  , _autoScalingAutoScalingGroupTargetGroupARNs = Nothing
  , _autoScalingAutoScalingGroupTerminationPolicies = Nothing
  , _autoScalingAutoScalingGroupVPCZoneIdentifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-autoscalinggroupname
asasgAutoScalingGroupName :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgAutoScalingGroupName = lens _autoScalingAutoScalingGroupAutoScalingGroupName (\s a -> s { _autoScalingAutoScalingGroupAutoScalingGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-availabilityzones
asasgAvailabilityZones :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgAvailabilityZones = lens _autoScalingAutoScalingGroupAvailabilityZones (\s a -> s { _autoScalingAutoScalingGroupAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-cooldown
asasgCooldown :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgCooldown = lens _autoScalingAutoScalingGroupCooldown (\s a -> s { _autoScalingAutoScalingGroupCooldown = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-desiredcapacity
asasgDesiredCapacity :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgDesiredCapacity = lens _autoScalingAutoScalingGroupDesiredCapacity (\s a -> s { _autoScalingAutoScalingGroupDesiredCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthcheckgraceperiod
asasgHealthCheckGracePeriod :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Integer))
asasgHealthCheckGracePeriod = lens _autoScalingAutoScalingGroupHealthCheckGracePeriod (\s a -> s { _autoScalingAutoScalingGroupHealthCheckGracePeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthchecktype
asasgHealthCheckType :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgHealthCheckType = lens _autoScalingAutoScalingGroupHealthCheckType (\s a -> s { _autoScalingAutoScalingGroupHealthCheckType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-instanceid
asasgInstanceId :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgInstanceId = lens _autoScalingAutoScalingGroupInstanceId (\s a -> s { _autoScalingAutoScalingGroupInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchconfigurationname
asasgLaunchConfigurationName :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgLaunchConfigurationName = lens _autoScalingAutoScalingGroupLaunchConfigurationName (\s a -> s { _autoScalingAutoScalingGroupLaunchConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchtemplate
asasgLaunchTemplate :: Lens' AutoScalingAutoScalingGroup (Maybe AutoScalingAutoScalingGroupLaunchTemplateSpecification)
asasgLaunchTemplate = lens _autoScalingAutoScalingGroupLaunchTemplate (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecificationlist
asasgLifecycleHookSpecificationList :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupLifecycleHookSpecification])
asasgLifecycleHookSpecificationList = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationList (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-loadbalancernames
asasgLoadBalancerNames :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgLoadBalancerNames = lens _autoScalingAutoScalingGroupLoadBalancerNames (\s a -> s { _autoScalingAutoScalingGroupLoadBalancerNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-maxinstancelifetime
asasgMaxInstanceLifetime :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Integer))
asasgMaxInstanceLifetime = lens _autoScalingAutoScalingGroupMaxInstanceLifetime (\s a -> s { _autoScalingAutoScalingGroupMaxInstanceLifetime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-maxsize
asasgMaxSize :: Lens' AutoScalingAutoScalingGroup (Val Text)
asasgMaxSize = lens _autoScalingAutoScalingGroupMaxSize (\s a -> s { _autoScalingAutoScalingGroupMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-metricscollection
asasgMetricsCollection :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupMetricsCollection])
asasgMetricsCollection = lens _autoScalingAutoScalingGroupMetricsCollection (\s a -> s { _autoScalingAutoScalingGroupMetricsCollection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-minsize
asasgMinSize :: Lens' AutoScalingAutoScalingGroup (Val Text)
asasgMinSize = lens _autoScalingAutoScalingGroupMinSize (\s a -> s { _autoScalingAutoScalingGroupMinSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-mixedinstancespolicy
asasgMixedInstancesPolicy :: Lens' AutoScalingAutoScalingGroup (Maybe AutoScalingAutoScalingGroupMixedInstancesPolicy)
asasgMixedInstancesPolicy = lens _autoScalingAutoScalingGroupMixedInstancesPolicy (\s a -> s { _autoScalingAutoScalingGroupMixedInstancesPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-newinstancesprotectedfromscalein
asasgNewInstancesProtectedFromScaleIn :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Bool))
asasgNewInstancesProtectedFromScaleIn = lens _autoScalingAutoScalingGroupNewInstancesProtectedFromScaleIn (\s a -> s { _autoScalingAutoScalingGroupNewInstancesProtectedFromScaleIn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-notificationconfigurations
asasgNotificationConfigurations :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupNotificationConfiguration])
asasgNotificationConfigurations = lens _autoScalingAutoScalingGroupNotificationConfigurations (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-placementgroup
asasgPlacementGroup :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgPlacementGroup = lens _autoScalingAutoScalingGroupPlacementGroup (\s a -> s { _autoScalingAutoScalingGroupPlacementGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-servicelinkedrolearn
asasgServiceLinkedRoleARN :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgServiceLinkedRoleARN = lens _autoScalingAutoScalingGroupServiceLinkedRoleARN (\s a -> s { _autoScalingAutoScalingGroupServiceLinkedRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-tags
asasgTags :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupTagProperty])
asasgTags = lens _autoScalingAutoScalingGroupTags (\s a -> s { _autoScalingAutoScalingGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-targetgrouparns
asasgTargetGroupARNs :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgTargetGroupARNs = lens _autoScalingAutoScalingGroupTargetGroupARNs (\s a -> s { _autoScalingAutoScalingGroupTargetGroupARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-termpolicy
asasgTerminationPolicies :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgTerminationPolicies = lens _autoScalingAutoScalingGroupTerminationPolicies (\s a -> s { _autoScalingAutoScalingGroupTerminationPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-vpczoneidentifier
asasgVPCZoneIdentifier :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgVPCZoneIdentifier = lens _autoScalingAutoScalingGroupVPCZoneIdentifier (\s a -> s { _autoScalingAutoScalingGroupVPCZoneIdentifier = a })
