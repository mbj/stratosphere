{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html

module Stratosphere.Resources.ElasticLoadBalancingLoadBalancer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAccessLoggingPolicy
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionSettings
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerHealthCheck
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerListeners
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerPolicies
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElasticLoadBalancingLoadBalancer. See
-- 'elasticLoadBalancingLoadBalancer' for a more convenient constructor.
data ElasticLoadBalancingLoadBalancer =
  ElasticLoadBalancingLoadBalancer
  { _elasticLoadBalancingLoadBalancerAccessLoggingPolicy :: Maybe ElasticLoadBalancingLoadBalancerAccessLoggingPolicy
  , _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy :: Maybe [ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy]
  , _elasticLoadBalancingLoadBalancerAvailabilityZones :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicy :: Maybe ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  , _elasticLoadBalancingLoadBalancerConnectionSettings :: Maybe ElasticLoadBalancingLoadBalancerConnectionSettings
  , _elasticLoadBalancingLoadBalancerCrossZone :: Maybe (Val Bool)
  , _elasticLoadBalancingLoadBalancerHealthCheck :: Maybe ElasticLoadBalancingLoadBalancerHealthCheck
  , _elasticLoadBalancingLoadBalancerInstances :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy :: Maybe [ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy]
  , _elasticLoadBalancingLoadBalancerListeners :: [ElasticLoadBalancingLoadBalancerListeners]
  , _elasticLoadBalancingLoadBalancerLoadBalancerName :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerPolicies :: Maybe [ElasticLoadBalancingLoadBalancerPolicies]
  , _elasticLoadBalancingLoadBalancerScheme :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerSecurityGroups :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerSubnets :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ElasticLoadBalancingLoadBalancer where
  toResourceProperties ElasticLoadBalancingLoadBalancer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticLoadBalancing::LoadBalancer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessLoggingPolicy",) . toJSON) _elasticLoadBalancingLoadBalancerAccessLoggingPolicy
        , fmap (("AppCookieStickinessPolicy",) . toJSON) _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
        , fmap (("AvailabilityZones",) . toJSON) _elasticLoadBalancingLoadBalancerAvailabilityZones
        , fmap (("ConnectionDrainingPolicy",) . toJSON) _elasticLoadBalancingLoadBalancerConnectionDrainingPolicy
        , fmap (("ConnectionSettings",) . toJSON) _elasticLoadBalancingLoadBalancerConnectionSettings
        , fmap (("CrossZone",) . toJSON) _elasticLoadBalancingLoadBalancerCrossZone
        , fmap (("HealthCheck",) . toJSON) _elasticLoadBalancingLoadBalancerHealthCheck
        , fmap (("Instances",) . toJSON) _elasticLoadBalancingLoadBalancerInstances
        , fmap (("LBCookieStickinessPolicy",) . toJSON) _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
        , (Just . ("Listeners",) . toJSON) _elasticLoadBalancingLoadBalancerListeners
        , fmap (("LoadBalancerName",) . toJSON) _elasticLoadBalancingLoadBalancerLoadBalancerName
        , fmap (("Policies",) . toJSON) _elasticLoadBalancingLoadBalancerPolicies
        , fmap (("Scheme",) . toJSON) _elasticLoadBalancingLoadBalancerScheme
        , fmap (("SecurityGroups",) . toJSON) _elasticLoadBalancingLoadBalancerSecurityGroups
        , fmap (("Subnets",) . toJSON) _elasticLoadBalancingLoadBalancerSubnets
        , fmap (("Tags",) . toJSON) _elasticLoadBalancingLoadBalancerTags
        ]
    }

-- | Constructor for 'ElasticLoadBalancingLoadBalancer' containing required
-- fields as arguments.
elasticLoadBalancingLoadBalancer
  :: [ElasticLoadBalancingLoadBalancerListeners] -- ^ 'elblbListeners'
  -> ElasticLoadBalancingLoadBalancer
elasticLoadBalancingLoadBalancer listenersarg =
  ElasticLoadBalancingLoadBalancer
  { _elasticLoadBalancingLoadBalancerAccessLoggingPolicy = Nothing
  , _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy = Nothing
  , _elasticLoadBalancingLoadBalancerAvailabilityZones = Nothing
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicy = Nothing
  , _elasticLoadBalancingLoadBalancerConnectionSettings = Nothing
  , _elasticLoadBalancingLoadBalancerCrossZone = Nothing
  , _elasticLoadBalancingLoadBalancerHealthCheck = Nothing
  , _elasticLoadBalancingLoadBalancerInstances = Nothing
  , _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy = Nothing
  , _elasticLoadBalancingLoadBalancerListeners = listenersarg
  , _elasticLoadBalancingLoadBalancerLoadBalancerName = Nothing
  , _elasticLoadBalancingLoadBalancerPolicies = Nothing
  , _elasticLoadBalancingLoadBalancerScheme = Nothing
  , _elasticLoadBalancingLoadBalancerSecurityGroups = Nothing
  , _elasticLoadBalancingLoadBalancerSubnets = Nothing
  , _elasticLoadBalancingLoadBalancerTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-accessloggingpolicy
elblbAccessLoggingPolicy :: Lens' ElasticLoadBalancingLoadBalancer (Maybe ElasticLoadBalancingLoadBalancerAccessLoggingPolicy)
elblbAccessLoggingPolicy = lens _elasticLoadBalancingLoadBalancerAccessLoggingPolicy (\s a -> s { _elasticLoadBalancingLoadBalancerAccessLoggingPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-appcookiestickinesspolicy
elblbAppCookieStickinessPolicy :: Lens' ElasticLoadBalancingLoadBalancer (Maybe [ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy])
elblbAppCookieStickinessPolicy = lens _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy (\s a -> s { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-availabilityzones
elblbAvailabilityZones :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (ValList Text))
elblbAvailabilityZones = lens _elasticLoadBalancingLoadBalancerAvailabilityZones (\s a -> s { _elasticLoadBalancingLoadBalancerAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-connectiondrainingpolicy
elblbConnectionDrainingPolicy :: Lens' ElasticLoadBalancingLoadBalancer (Maybe ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy)
elblbConnectionDrainingPolicy = lens _elasticLoadBalancingLoadBalancerConnectionDrainingPolicy (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-connectionsettings
elblbConnectionSettings :: Lens' ElasticLoadBalancingLoadBalancer (Maybe ElasticLoadBalancingLoadBalancerConnectionSettings)
elblbConnectionSettings = lens _elasticLoadBalancingLoadBalancerConnectionSettings (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-crosszone
elblbCrossZone :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (Val Bool))
elblbCrossZone = lens _elasticLoadBalancingLoadBalancerCrossZone (\s a -> s { _elasticLoadBalancingLoadBalancerCrossZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-healthcheck
elblbHealthCheck :: Lens' ElasticLoadBalancingLoadBalancer (Maybe ElasticLoadBalancingLoadBalancerHealthCheck)
elblbHealthCheck = lens _elasticLoadBalancingLoadBalancerHealthCheck (\s a -> s { _elasticLoadBalancingLoadBalancerHealthCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-instances
elblbInstances :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (ValList Text))
elblbInstances = lens _elasticLoadBalancingLoadBalancerInstances (\s a -> s { _elasticLoadBalancingLoadBalancerInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-lbcookiestickinesspolicy
elblbLBCookieStickinessPolicy :: Lens' ElasticLoadBalancingLoadBalancer (Maybe [ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy])
elblbLBCookieStickinessPolicy = lens _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy (\s a -> s { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-listeners
elblbListeners :: Lens' ElasticLoadBalancingLoadBalancer [ElasticLoadBalancingLoadBalancerListeners]
elblbListeners = lens _elasticLoadBalancingLoadBalancerListeners (\s a -> s { _elasticLoadBalancingLoadBalancerListeners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-elbname
elblbLoadBalancerName :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (Val Text))
elblbLoadBalancerName = lens _elasticLoadBalancingLoadBalancerLoadBalancerName (\s a -> s { _elasticLoadBalancingLoadBalancerLoadBalancerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-policies
elblbPolicies :: Lens' ElasticLoadBalancingLoadBalancer (Maybe [ElasticLoadBalancingLoadBalancerPolicies])
elblbPolicies = lens _elasticLoadBalancingLoadBalancerPolicies (\s a -> s { _elasticLoadBalancingLoadBalancerPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-scheme
elblbScheme :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (Val Text))
elblbScheme = lens _elasticLoadBalancingLoadBalancerScheme (\s a -> s { _elasticLoadBalancingLoadBalancerScheme = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-securitygroups
elblbSecurityGroups :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (ValList Text))
elblbSecurityGroups = lens _elasticLoadBalancingLoadBalancerSecurityGroups (\s a -> s { _elasticLoadBalancingLoadBalancerSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-subnets
elblbSubnets :: Lens' ElasticLoadBalancingLoadBalancer (Maybe (ValList Text))
elblbSubnets = lens _elasticLoadBalancingLoadBalancerSubnets (\s a -> s { _elasticLoadBalancingLoadBalancerSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-elasticloadbalancing-loadbalancer-tags
elblbTags :: Lens' ElasticLoadBalancingLoadBalancer (Maybe [Tag])
elblbTags = lens _elasticLoadBalancingLoadBalancerTags (\s a -> s { _elasticLoadBalancingLoadBalancerTags = a })
