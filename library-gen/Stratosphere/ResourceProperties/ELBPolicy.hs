{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The ElasticLoadBalancing policy type is an embedded property of the
-- AWS::ElasticLoadBalancing::LoadBalancer resource. You associate policies
-- with a listener by referencing a policy's name in the listener's
-- PolicyNames property.

module Stratosphere.ResourceProperties.ELBPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ELBPolicy. See 'elbPolicy' for a more
-- convenient constructor.
data ELBPolicy =
  ELBPolicy
  { _eLBPolicyAttributes :: Object
  , _eLBPolicyInstancePorts :: Maybe [Val Text]
  , _eLBPolicyLoadBalancerPorts :: Maybe [Val Text]
  , _eLBPolicyPolicyName :: Val Text
  , _eLBPolicyPolicyType :: Val Text
  } deriving (Show, Generic)

instance ToJSON ELBPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON ELBPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'ELBPolicy' containing required fields as arguments.
elbPolicy
  :: Object -- ^ 'elbpAttributes'
  -> Val Text -- ^ 'elbpPolicyName'
  -> Val Text -- ^ 'elbpPolicyType'
  -> ELBPolicy
elbPolicy attributesarg policyNamearg policyTypearg =
  ELBPolicy
  { _eLBPolicyAttributes = attributesarg
  , _eLBPolicyInstancePorts = Nothing
  , _eLBPolicyLoadBalancerPorts = Nothing
  , _eLBPolicyPolicyName = policyNamearg
  , _eLBPolicyPolicyType = policyTypearg
  }

-- | A list of arbitrary attributes for this policy. If you don't need to
-- specify any policy attributes, specify an empty list ([]).
elbpAttributes :: Lens' ELBPolicy Object
elbpAttributes = lens _eLBPolicyAttributes (\s a -> s { _eLBPolicyAttributes = a })

-- | A list of instance ports for the policy. These are the ports associated
-- with the back-end server.
elbpInstancePorts :: Lens' ELBPolicy (Maybe [Val Text])
elbpInstancePorts = lens _eLBPolicyInstancePorts (\s a -> s { _eLBPolicyInstancePorts = a })

-- | A list of external load balancer ports for the policy.
elbpLoadBalancerPorts :: Lens' ELBPolicy (Maybe [Val Text])
elbpLoadBalancerPorts = lens _eLBPolicyLoadBalancerPorts (\s a -> s { _eLBPolicyLoadBalancerPorts = a })

-- | A name for this policy that is unique to the load balancer.
elbpPolicyName :: Lens' ELBPolicy (Val Text)
elbpPolicyName = lens _eLBPolicyPolicyName (\s a -> s { _eLBPolicyPolicyName = a })

-- | The name of the policy type for this policy. This must be one of the
-- types reported by the Elastic Load Balancing
-- DescribeLoadBalancerPolicyTypes action.
elbpPolicyType :: Lens' ELBPolicy (Val Text)
elbpPolicyType = lens _eLBPolicyPolicyType (\s a -> s { _eLBPolicyPolicyType = a })