{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy. See
-- | 'elasticLoadBalancingLoadBalancerConnectionDrainingPolicy' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy =
  ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled :: Val Bool'
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

-- | Constructor for
-- | 'ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy' containing
-- | required fields as arguments.
elasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  :: Val Bool' -- ^ 'elblbcdpEnabled'
  -> ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
elasticLoadBalancingLoadBalancerConnectionDrainingPolicy enabledarg =
  ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled = enabledarg
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled
elblbcdpEnabled :: Lens' ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy (Val Bool')
elblbcdpEnabled = lens _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout
elblbcdpTimeout :: Lens' ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy (Maybe (Val Integer'))
elblbcdpTimeout = lens _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout = a })
