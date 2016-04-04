{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ElasticLoadBalancing::LoadBalancer type creates a LoadBalancer.

module Stratosphere.Resources.LoadBalancer where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.AccessLoggingPolicy
import Stratosphere.ResourceProperties.AppCookieStickinessPolicy
import Stratosphere.ResourceProperties.ConnectionDrainingPolicy
import Stratosphere.ResourceProperties.ConnectionSettings
import Stratosphere.ResourceProperties.HealthCheck
import Stratosphere.ResourceProperties.LBCookieStickinessPolicy
import Stratosphere.ResourceProperties.ListenerProperty
import Stratosphere.ResourceProperties.ELBPolicy
import Stratosphere.ResourceProperties.ResourceTag

data LoadBalancer =
  LoadBalancer
  { _loadBalancerAccessLoggingPolicy :: Maybe (Val AccessLoggingPolicy)
  , _loadBalancerAppCookieStickinessPolicy :: Maybe [Val AppCookieStickinessPolicy]
  , _loadBalancerAvailabilityZones :: Maybe [Val Text]
  , _loadBalancerConnectionDrainingPolicy :: Maybe (Val ConnectionDrainingPolicy)
  , _loadBalancerConnectionSettings :: Maybe (Val ConnectionSettings)
  , _loadBalancerCrossZone :: Maybe (Val Bool')
  , _loadBalancerHealthCheck :: Maybe (Val HealthCheck)
  , _loadBalancerInstances :: Maybe [Val Text]
  , _loadBalancerLBCookieStickinessPolicy :: Maybe [Val LBCookieStickinessPolicy]
  , _loadBalancerLoadBalancerName :: Maybe (Val Text)
  , _loadBalancerListeners :: [Val ListenerProperty]
  , _loadBalancerPolicies :: Maybe [Val ELBPolicy]
  , _loadBalancerScheme :: Maybe (Val Text)
  , _loadBalancerSecurityGroups :: Maybe [Val Text]
  , _loadBalancerSubnets :: Maybe [Val Text]
  , _loadBalancerTags :: Maybe [Val ResourceTag]
  } deriving (Show, Generic)

instance ToJSON LoadBalancer where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

instance FromJSON LoadBalancer where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

loadBalancer
  :: [Val ListenerProperty] -- ^ Listeners
  -> LoadBalancer
loadBalancer listenersarg =
  LoadBalancer
  { _loadBalancerAccessLoggingPolicy = Nothing
  , _loadBalancerAppCookieStickinessPolicy = Nothing
  , _loadBalancerAvailabilityZones = Nothing
  , _loadBalancerConnectionDrainingPolicy = Nothing
  , _loadBalancerConnectionSettings = Nothing
  , _loadBalancerCrossZone = Nothing
  , _loadBalancerHealthCheck = Nothing
  , _loadBalancerInstances = Nothing
  , _loadBalancerLBCookieStickinessPolicy = Nothing
  , _loadBalancerLoadBalancerName = Nothing
  , _loadBalancerListeners = listenersarg
  , _loadBalancerPolicies = Nothing
  , _loadBalancerScheme = Nothing
  , _loadBalancerSecurityGroups = Nothing
  , _loadBalancerSubnets = Nothing
  , _loadBalancerTags = Nothing
  }

-- | Captures detailed information for all requests made to your load
-- balancer, such as the time a request was received, client’s IP address,
-- latencies, request path, and server responses.
lbAccessLoggingPolicy :: Lens' LoadBalancer (Maybe (Val AccessLoggingPolicy))
lbAccessLoggingPolicy = lens _loadBalancerAccessLoggingPolicy (\s a -> s { _loadBalancerAccessLoggingPolicy = a })

-- | Generates one or more stickiness policies with sticky session lifetimes
-- that follow that of an application-generated cookie. These policies can be
-- associated only with HTTP/HTTPS listeners.
lbAppCookieStickinessPolicy :: Lens' LoadBalancer (Maybe [Val AppCookieStickinessPolicy])
lbAppCookieStickinessPolicy = lens _loadBalancerAppCookieStickinessPolicy (\s a -> s { _loadBalancerAppCookieStickinessPolicy = a })

-- | The Availability Zones in which to create the load balancer. You can
-- specify the AvailabilityZones or Subnets property, but not both. Note For
-- load balancers that are in a VPC, specify the Subnets property.
lbAvailabilityZones :: Lens' LoadBalancer (Maybe [Val Text])
lbAvailabilityZones = lens _loadBalancerAvailabilityZones (\s a -> s { _loadBalancerAvailabilityZones = a })

-- | Whether deregistered or unhealthy instances can complete all in-flight
-- requests.
lbConnectionDrainingPolicy :: Lens' LoadBalancer (Maybe (Val ConnectionDrainingPolicy))
lbConnectionDrainingPolicy = lens _loadBalancerConnectionDrainingPolicy (\s a -> s { _loadBalancerConnectionDrainingPolicy = a })

-- | Specifies how long front-end and back-end connections of your load
-- balancer can remain idle.
lbConnectionSettings :: Lens' LoadBalancer (Maybe (Val ConnectionSettings))
lbConnectionSettings = lens _loadBalancerConnectionSettings (\s a -> s { _loadBalancerConnectionSettings = a })

-- | Whether cross-zone load balancing is enabled for the load balancer. With
-- cross-zone load balancing, your load balancer nodes route traffic to the
-- back-end instances across all Availability Zones. By default the CrossZone
-- property is false.
lbCrossZone :: Lens' LoadBalancer (Maybe (Val Bool'))
lbCrossZone = lens _loadBalancerCrossZone (\s a -> s { _loadBalancerCrossZone = a })

-- | Application health check for the instances.
lbHealthCheck :: Lens' LoadBalancer (Maybe (Val HealthCheck))
lbHealthCheck = lens _loadBalancerHealthCheck (\s a -> s { _loadBalancerHealthCheck = a })

-- | A list of EC2 instance IDs for the load balancer.
lbInstances :: Lens' LoadBalancer (Maybe [Val Text])
lbInstances = lens _loadBalancerInstances (\s a -> s { _loadBalancerInstances = a })

-- | Generates a stickiness policy with sticky session lifetimes controlled by
-- the lifetime of the browser (user-agent), or by a specified expiration
-- period. This policy can be associated only with HTTP/HTTPS listeners.
lbLBCookieStickinessPolicy :: Lens' LoadBalancer (Maybe [Val LBCookieStickinessPolicy])
lbLBCookieStickinessPolicy = lens _loadBalancerLBCookieStickinessPolicy (\s a -> s { _loadBalancerLBCookieStickinessPolicy = a })

-- | A name for the load balancer. If you don't specify a name, AWS
-- CloudFormation generates a unique physical ID and uses that ID for the load
-- balancer. The name must be unique within your set of load balancers. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
lbLoadBalancerName :: Lens' LoadBalancer (Maybe (Val Text))
lbLoadBalancerName = lens _loadBalancerLoadBalancerName (\s a -> s { _loadBalancerLoadBalancerName = a })

-- | One or more listeners for this load balancer. Each listener must be
-- registered for a specific port, and you cannot have more than one listener
-- for a given port. Important If you update the property values for a
-- listener specified by the Listeners property, AWS CloudFormation will
-- delete the existing listener and create a new one with the updated
-- properties. During the time that AWS CloudFormation is performing this
-- action, clients will not be able to connect to the load balancer.
lbListeners :: Lens' LoadBalancer [Val ListenerProperty]
lbListeners = lens _loadBalancerListeners (\s a -> s { _loadBalancerListeners = a })

-- | A list of elastic load balancing policies to apply to this elastic load
-- balancer.
lbPolicies :: Lens' LoadBalancer (Maybe [Val ELBPolicy])
lbPolicies = lens _loadBalancerPolicies (\s a -> s { _loadBalancerPolicies = a })

-- | For load balancers attached to an Amazon VPC, this parameter can be used
-- to specify the type of load balancer to use. Specify internal to create an
-- internal load balancer with a DNS name that resolves to private IP
-- addresses or internet-facing to create a load balancer with a publicly
-- resolvable DNS name, which resolves to public IP addresses. Note If you
-- specify internal, you must specify subnets to associate with the load
-- balancer, not Availability Zones.
lbScheme :: Lens' LoadBalancer (Maybe (Val Text))
lbScheme = lens _loadBalancerScheme (\s a -> s { _loadBalancerScheme = a })

-- |
lbSecurityGroups :: Lens' LoadBalancer (Maybe [Val Text])
lbSecurityGroups = lens _loadBalancerSecurityGroups (\s a -> s { _loadBalancerSecurityGroups = a })

-- | A list of subnet IDs in your virtual private cloud (VPC) to attach to
-- your load balancer. Do not specify multiple subnets that are in the same
-- Availability Zone. You can specify the AvailabilityZones or Subnets
-- property, but not both. For more information about using Elastic Load
-- Balancing in a VPC, see How Do I Use Elastic Load Balancing in Amazon VPC
-- in the Elastic Load Balancing Developer Guide.
lbSubnets :: Lens' LoadBalancer (Maybe [Val Text])
lbSubnets = lens _loadBalancerSubnets (\s a -> s { _loadBalancerSubnets = a })

-- | An arbitrary set of tags (key-value pairs) for this load balancer.
lbTags :: Lens' LoadBalancer (Maybe [Val ResourceTag])
lbTags = lens _loadBalancerTags (\s a -> s { _loadBalancerTags = a })