{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html

module Stratosphere.Resources.AutoScalingAutoScalingGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupTagProperty
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLifecycleHookSpecification
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMetricsCollection
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfiguration

-- | Full data type definition for AutoScalingAutoScalingGroup. See
-- 'autoScalingAutoScalingGroup' for a more convenient constructor.
data AutoScalingAutoScalingGroup =
  AutoScalingAutoScalingGroup
  { _autoScalingAutoScalingGroupAsTags :: Maybe [AutoScalingAutoScalingGroupTagProperty]
  , _autoScalingAutoScalingGroupAvailabilityZones :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupCooldown :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupDesiredCapacity :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupHealthCheckGracePeriod :: Maybe (Val Integer)
  , _autoScalingAutoScalingGroupHealthCheckType :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupInstanceId :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchConfigurationName :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationList :: Maybe [AutoScalingAutoScalingGroupLifecycleHookSpecification]
  , _autoScalingAutoScalingGroupLoadBalancerNames :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupMaxSize :: Val Text
  , _autoScalingAutoScalingGroupMetricsCollection :: Maybe [AutoScalingAutoScalingGroupMetricsCollection]
  , _autoScalingAutoScalingGroupMinSize :: Val Text
  , _autoScalingAutoScalingGroupNotificationConfigurations :: Maybe [AutoScalingAutoScalingGroupNotificationConfiguration]
  , _autoScalingAutoScalingGroupPlacementGroup :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupTargetGroupARNs :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupTerminationPolicies :: Maybe (ValList Text)
  , _autoScalingAutoScalingGroupVPCZoneIdentifier :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroup where
  toJSON AutoScalingAutoScalingGroup{..} =
    object $
    catMaybes
    [ fmap (("AsTags",) . toJSON) _autoScalingAutoScalingGroupAsTags
    , fmap (("AvailabilityZones",) . toJSON) _autoScalingAutoScalingGroupAvailabilityZones
    , fmap (("Cooldown",) . toJSON) _autoScalingAutoScalingGroupCooldown
    , fmap (("DesiredCapacity",) . toJSON) _autoScalingAutoScalingGroupDesiredCapacity
    , fmap (("HealthCheckGracePeriod",) . toJSON . fmap Integer') _autoScalingAutoScalingGroupHealthCheckGracePeriod
    , fmap (("HealthCheckType",) . toJSON) _autoScalingAutoScalingGroupHealthCheckType
    , fmap (("InstanceId",) . toJSON) _autoScalingAutoScalingGroupInstanceId
    , fmap (("LaunchConfigurationName",) . toJSON) _autoScalingAutoScalingGroupLaunchConfigurationName
    , fmap (("LifecycleHookSpecificationList",) . toJSON) _autoScalingAutoScalingGroupLifecycleHookSpecificationList
    , fmap (("LoadBalancerNames",) . toJSON) _autoScalingAutoScalingGroupLoadBalancerNames
    , (Just . ("MaxSize",) . toJSON) _autoScalingAutoScalingGroupMaxSize
    , fmap (("MetricsCollection",) . toJSON) _autoScalingAutoScalingGroupMetricsCollection
    , (Just . ("MinSize",) . toJSON) _autoScalingAutoScalingGroupMinSize
    , fmap (("NotificationConfigurations",) . toJSON) _autoScalingAutoScalingGroupNotificationConfigurations
    , fmap (("PlacementGroup",) . toJSON) _autoScalingAutoScalingGroupPlacementGroup
    , fmap (("TargetGroupARNs",) . toJSON) _autoScalingAutoScalingGroupTargetGroupARNs
    , fmap (("TerminationPolicies",) . toJSON) _autoScalingAutoScalingGroupTerminationPolicies
    , fmap (("VPCZoneIdentifier",) . toJSON) _autoScalingAutoScalingGroupVPCZoneIdentifier
    ]

instance FromJSON AutoScalingAutoScalingGroup where
  parseJSON (Object obj) =
    AutoScalingAutoScalingGroup <$>
      (obj .:? "AsTags") <*>
      (obj .:? "AvailabilityZones") <*>
      (obj .:? "Cooldown") <*>
      (obj .:? "DesiredCapacity") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "HealthCheckGracePeriod") <*>
      (obj .:? "HealthCheckType") <*>
      (obj .:? "InstanceId") <*>
      (obj .:? "LaunchConfigurationName") <*>
      (obj .:? "LifecycleHookSpecificationList") <*>
      (obj .:? "LoadBalancerNames") <*>
      (obj .: "MaxSize") <*>
      (obj .:? "MetricsCollection") <*>
      (obj .: "MinSize") <*>
      (obj .:? "NotificationConfigurations") <*>
      (obj .:? "PlacementGroup") <*>
      (obj .:? "TargetGroupARNs") <*>
      (obj .:? "TerminationPolicies") <*>
      (obj .:? "VPCZoneIdentifier")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingAutoScalingGroup' containing required fields
-- as arguments.
autoScalingAutoScalingGroup
  :: Val Text -- ^ 'asasgMaxSize'
  -> Val Text -- ^ 'asasgMinSize'
  -> AutoScalingAutoScalingGroup
autoScalingAutoScalingGroup maxSizearg minSizearg =
  AutoScalingAutoScalingGroup
  { _autoScalingAutoScalingGroupAsTags = Nothing
  , _autoScalingAutoScalingGroupAvailabilityZones = Nothing
  , _autoScalingAutoScalingGroupCooldown = Nothing
  , _autoScalingAutoScalingGroupDesiredCapacity = Nothing
  , _autoScalingAutoScalingGroupHealthCheckGracePeriod = Nothing
  , _autoScalingAutoScalingGroupHealthCheckType = Nothing
  , _autoScalingAutoScalingGroupInstanceId = Nothing
  , _autoScalingAutoScalingGroupLaunchConfigurationName = Nothing
  , _autoScalingAutoScalingGroupLifecycleHookSpecificationList = Nothing
  , _autoScalingAutoScalingGroupLoadBalancerNames = Nothing
  , _autoScalingAutoScalingGroupMaxSize = maxSizearg
  , _autoScalingAutoScalingGroupMetricsCollection = Nothing
  , _autoScalingAutoScalingGroupMinSize = minSizearg
  , _autoScalingAutoScalingGroupNotificationConfigurations = Nothing
  , _autoScalingAutoScalingGroupPlacementGroup = Nothing
  , _autoScalingAutoScalingGroupTargetGroupARNs = Nothing
  , _autoScalingAutoScalingGroupTerminationPolicies = Nothing
  , _autoScalingAutoScalingGroupVPCZoneIdentifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-tags
asasgAsTags :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupTagProperty])
asasgAsTags = lens _autoScalingAutoScalingGroupAsTags (\s a -> s { _autoScalingAutoScalingGroupAsTags = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecificationlist
asasgLifecycleHookSpecificationList :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupLifecycleHookSpecification])
asasgLifecycleHookSpecificationList = lens _autoScalingAutoScalingGroupLifecycleHookSpecificationList (\s a -> s { _autoScalingAutoScalingGroupLifecycleHookSpecificationList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-loadbalancernames
asasgLoadBalancerNames :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgLoadBalancerNames = lens _autoScalingAutoScalingGroupLoadBalancerNames (\s a -> s { _autoScalingAutoScalingGroupLoadBalancerNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-maxsize
asasgMaxSize :: Lens' AutoScalingAutoScalingGroup (Val Text)
asasgMaxSize = lens _autoScalingAutoScalingGroupMaxSize (\s a -> s { _autoScalingAutoScalingGroupMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-metricscollection
asasgMetricsCollection :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupMetricsCollection])
asasgMetricsCollection = lens _autoScalingAutoScalingGroupMetricsCollection (\s a -> s { _autoScalingAutoScalingGroupMetricsCollection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-minsize
asasgMinSize :: Lens' AutoScalingAutoScalingGroup (Val Text)
asasgMinSize = lens _autoScalingAutoScalingGroupMinSize (\s a -> s { _autoScalingAutoScalingGroupMinSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-notificationconfigurations
asasgNotificationConfigurations :: Lens' AutoScalingAutoScalingGroup (Maybe [AutoScalingAutoScalingGroupNotificationConfiguration])
asasgNotificationConfigurations = lens _autoScalingAutoScalingGroupNotificationConfigurations (\s a -> s { _autoScalingAutoScalingGroupNotificationConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-placementgroup
asasgPlacementGroup :: Lens' AutoScalingAutoScalingGroup (Maybe (Val Text))
asasgPlacementGroup = lens _autoScalingAutoScalingGroupPlacementGroup (\s a -> s { _autoScalingAutoScalingGroupPlacementGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-targetgrouparns
asasgTargetGroupARNs :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgTargetGroupARNs = lens _autoScalingAutoScalingGroupTargetGroupARNs (\s a -> s { _autoScalingAutoScalingGroupTargetGroupARNs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-termpolicy
asasgTerminationPolicies :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgTerminationPolicies = lens _autoScalingAutoScalingGroupTerminationPolicies (\s a -> s { _autoScalingAutoScalingGroupTerminationPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-vpczoneidentifier
asasgVPCZoneIdentifier :: Lens' AutoScalingAutoScalingGroup (Maybe (ValList Text))
asasgVPCZoneIdentifier = lens _autoScalingAutoScalingGroupVPCZoneIdentifier (\s a -> s { _autoScalingAutoScalingGroupVPCZoneIdentifier = a })
