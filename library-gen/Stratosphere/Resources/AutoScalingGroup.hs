{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::AutoScaling::AutoScalingGroup type creates an Auto Scaling
-- group. You can add an UpdatePolicy attribute to your Auto Scaling group to
-- control how rolling updates are performed when a change has been made to
-- the Auto Scaling group's launch configuration or subnet group membership.

module Stratosphere.Resources.AutoScalingGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.AutoScalingMetricsCollection
import Stratosphere.ResourceProperties.AutoScalingNotificationConfigurations
import Stratosphere.ResourceProperties.AutoScalingTags

-- | Full data type definition for AutoScalingGroup. See 'autoScalingGroup'
-- for a more convenient constructor.
data AutoScalingGroup =
  AutoScalingGroup
  { _autoScalingGroupAvailabilityZones :: Maybe [Val Text]
  , _autoScalingGroupCooldown :: Maybe (Val Text)
  , _autoScalingGroupDesiredCapacity :: Maybe (Val Text)
  , _autoScalingGroupHealthCheckGracePeriod :: Maybe (Val Integer')
  , _autoScalingGroupHealthCheckType :: Maybe (Val Text)
  , _autoScalingGroupInstanceId :: Maybe (Val Text)
  , _autoScalingGroupLaunchConfigurationName :: Maybe (Val Text)
  , _autoScalingGroupLoadBalancerNames :: Maybe [Val Text]
  , _autoScalingGroupMaxSize :: Val Text
  , _autoScalingGroupMetricsCollection :: Maybe [AutoScalingMetricsCollection]
  , _autoScalingGroupMinSize :: Val Text
  , _autoScalingGroupNotificationConfigurations :: Maybe [AutoScalingNotificationConfigurations]
  , _autoScalingGroupPlacementGroup :: Maybe (Val Text)
  , _autoScalingGroupTags :: Maybe [AutoScalingTags]
  , _autoScalingGroupTerminationPolicies :: Maybe [Val Text]
  , _autoScalingGroupVPCZoneIdentifier :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON AutoScalingGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON AutoScalingGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'AutoScalingGroup' containing required fields as
-- arguments.
autoScalingGroup
  :: Val Text -- ^ 'asgMaxSize'
  -> Val Text -- ^ 'asgMinSize'
  -> AutoScalingGroup
autoScalingGroup maxSizearg minSizearg =
  AutoScalingGroup
  { _autoScalingGroupAvailabilityZones = Nothing
  , _autoScalingGroupCooldown = Nothing
  , _autoScalingGroupDesiredCapacity = Nothing
  , _autoScalingGroupHealthCheckGracePeriod = Nothing
  , _autoScalingGroupHealthCheckType = Nothing
  , _autoScalingGroupInstanceId = Nothing
  , _autoScalingGroupLaunchConfigurationName = Nothing
  , _autoScalingGroupLoadBalancerNames = Nothing
  , _autoScalingGroupMaxSize = maxSizearg
  , _autoScalingGroupMetricsCollection = Nothing
  , _autoScalingGroupMinSize = minSizearg
  , _autoScalingGroupNotificationConfigurations = Nothing
  , _autoScalingGroupPlacementGroup = Nothing
  , _autoScalingGroupTags = Nothing
  , _autoScalingGroupTerminationPolicies = Nothing
  , _autoScalingGroupVPCZoneIdentifier = Nothing
  }

-- | Contains a list of availability zones for the group.
asgAvailabilityZones :: Lens' AutoScalingGroup (Maybe [Val Text])
asgAvailabilityZones = lens _autoScalingGroupAvailabilityZones (\s a -> s { _autoScalingGroupAvailabilityZones = a })

-- | The number of seconds after a scaling activity is completed before any
-- further scaling activities can start.
asgCooldown :: Lens' AutoScalingGroup (Maybe (Val Text))
asgCooldown = lens _autoScalingGroupCooldown (\s a -> s { _autoScalingGroupCooldown = a })

-- | Specifies the desired capacity for the Auto Scaling group. If SpotPrice
-- is not set in the AWS::AutoScaling::LaunchConfiguration for this Auto
-- Scaling group, then Auto Scaling will begin to bring instances online based
-- on DesiredCapacity. CloudFormation will not mark the Auto Scaling group as
-- successful (by setting its status to CREATE_COMPLETE) until the desired
-- capacity is reached. If SpotPrice is set, then DesiredCapacity will not be
-- used as a criteria for success, since instances will only be started when
-- the spot price has been matched. After the spot price has been matched,
-- however, Auto Scaling uses DesiredCapacity as the target capacity for the
-- group.
asgDesiredCapacity :: Lens' AutoScalingGroup (Maybe (Val Text))
asgDesiredCapacity = lens _autoScalingGroupDesiredCapacity (\s a -> s { _autoScalingGroupDesiredCapacity = a })

-- | The length of time in seconds after a new EC2 instance comes into service
-- that Auto Scaling starts checking its health.
asgHealthCheckGracePeriod :: Lens' AutoScalingGroup (Maybe (Val Integer'))
asgHealthCheckGracePeriod = lens _autoScalingGroupHealthCheckGracePeriod (\s a -> s { _autoScalingGroupHealthCheckGracePeriod = a })

-- | The service you want the health status from, Amazon EC2 or Elastic Load
-- Balancer. Valid values are EC2 or ELB.
asgHealthCheckType :: Lens' AutoScalingGroup (Maybe (Val Text))
asgHealthCheckType = lens _autoScalingGroupHealthCheckType (\s a -> s { _autoScalingGroupHealthCheckType = a })

-- | The ID of the Amazon EC2 instance you want to use to create the Auto
-- Scaling group. Use this property if you want to create an Auto Scaling
-- group that uses an existing Amazon EC2 instance instead of a launch
-- configuration. When you use an Amazon EC2 instance to create an Auto
-- Scaling group, a new launch configuration is first created and then
-- associated with the Auto Scaling group. The new launch configuration
-- derives all its properties from the instance, with the exception of
-- BlockDeviceMapping and AssociatePublicIpAddress.
asgInstanceId :: Lens' AutoScalingGroup (Maybe (Val Text))
asgInstanceId = lens _autoScalingGroupInstanceId (\s a -> s { _autoScalingGroupInstanceId = a })

-- | Specifies the name of the associated
-- AWS::AutoScaling::LaunchConfiguration. Note If this resource has a public
-- IP address and is also in a VPC that is defined in the same template, you
-- must use the DependsOn attribute to declare a dependency on the VPC-gateway
-- attachment. For more information, see DependsOn Attribute.
asgLaunchConfigurationName :: Lens' AutoScalingGroup (Maybe (Val Text))
asgLaunchConfigurationName = lens _autoScalingGroupLaunchConfigurationName (\s a -> s { _autoScalingGroupLaunchConfigurationName = a })

-- | A list of load balancers associated with this Auto Scaling group.
asgLoadBalancerNames :: Lens' AutoScalingGroup (Maybe [Val Text])
asgLoadBalancerNames = lens _autoScalingGroupLoadBalancerNames (\s a -> s { _autoScalingGroupLoadBalancerNames = a })

-- | The maximum size of the Auto Scaling group.
asgMaxSize :: Lens' AutoScalingGroup (Val Text)
asgMaxSize = lens _autoScalingGroupMaxSize (\s a -> s { _autoScalingGroupMaxSize = a })

-- | Enables the monitoring of group metrics of an Auto Scaling group.
asgMetricsCollection :: Lens' AutoScalingGroup (Maybe [AutoScalingMetricsCollection])
asgMetricsCollection = lens _autoScalingGroupMetricsCollection (\s a -> s { _autoScalingGroupMetricsCollection = a })

-- | The minimum size of the Auto Scaling group.
asgMinSize :: Lens' AutoScalingGroup (Val Text)
asgMinSize = lens _autoScalingGroupMinSize (\s a -> s { _autoScalingGroupMinSize = a })

-- | An embedded property that configures an Auto Scaling group to send
-- notifications when specified events take place.
asgNotificationConfigurations :: Lens' AutoScalingGroup (Maybe [AutoScalingNotificationConfigurations])
asgNotificationConfigurations = lens _autoScalingGroupNotificationConfigurations (\s a -> s { _autoScalingGroupNotificationConfigurations = a })

-- | The name of an existing cluster placement group into which you want to
-- launch your instances. A placement group is a logical grouping of instances
-- within a single Availability Zone. You cannot specify multiple Availability
-- Zones and a placement group.
asgPlacementGroup :: Lens' AutoScalingGroup (Maybe (Val Text))
asgPlacementGroup = lens _autoScalingGroupPlacementGroup (\s a -> s { _autoScalingGroupPlacementGroup = a })

-- | The tags you want to attach to this resource. For more information about
-- tags, go to Tagging Auto Scaling Groups and Amazon EC2 Instances in the
-- Auto Scaling User Guide.
asgTags :: Lens' AutoScalingGroup (Maybe [AutoScalingTags])
asgTags = lens _autoScalingGroupTags (\s a -> s { _autoScalingGroupTags = a })

-- | A policy or a list of policies that are used to select the instances to
-- terminate. The policies are executed in the order that you list them. For
-- more information on configuring a termination policy for your Auto Scaling
-- group, see Instance Termination Policy for Your Auto Scaling Group in the
-- Auto Scaling User Guide.
asgTerminationPolicies :: Lens' AutoScalingGroup (Maybe [Val Text])
asgTerminationPolicies = lens _autoScalingGroupTerminationPolicies (\s a -> s { _autoScalingGroupTerminationPolicies = a })

-- | A list of subnet identifiers of Amazon Virtual Private Cloud (Amazon
-- VPCs). If you specify the AvailabilityZones property, the subnets that you
-- specify for this property must reside in those Availability Zones. For more
-- information, go to Using EC2 Dedicated Instances Within Your VPC in the
-- Auto Scaling User Guide.
asgVPCZoneIdentifier :: Lens' AutoScalingGroup (Maybe [Val Text])
asgVPCZoneIdentifier = lens _autoScalingGroupVPCZoneIdentifier (\s a -> s { _autoScalingGroupVPCZoneIdentifier = a })