{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute. See
-- | 'elasticLoadBalancingV2LoadBalancerLoadBalancerAttribute' for a more
-- | convenient constructor.
data ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute =
  ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute
  { _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeKey :: Maybe (Val Text)
  , _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeValue :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 56, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 56, omitNothingFields = True }

-- | Constructor for 'ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute'
-- | containing required fields as arguments.
elasticLoadBalancingV2LoadBalancerLoadBalancerAttribute
  :: ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute
elasticLoadBalancingV2LoadBalancerLoadBalancerAttribute  =
  ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute
  { _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeKey = Nothing
  , _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
elbvlblbaKey :: Lens' ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute (Maybe (Val Text))
elbvlblbaKey = lens _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeKey (\s a -> s { _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
elbvlblbaValue :: Lens' ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute (Maybe (Val Text))
elbvlblbaValue = lens _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeValue (\s a -> s { _elasticLoadBalancingV2LoadBalancerLoadBalancerAttributeValue = a })
