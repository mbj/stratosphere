{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattributes.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupTargetGroupAttribute where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingV2TargetGroupTargetGroupAttribute. See
-- | 'elasticLoadBalancingV2TargetGroupTargetGroupAttribute' for a more
-- | convenient constructor.
data ElasticLoadBalancingV2TargetGroupTargetGroupAttribute =
  ElasticLoadBalancingV2TargetGroupTargetGroupAttribute
  { _elasticLoadBalancingV2TargetGroupTargetGroupAttributeKey :: Maybe (Val Text)
  , _elasticLoadBalancingV2TargetGroupTargetGroupAttributeValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2TargetGroupTargetGroupAttribute where
  toJSON ElasticLoadBalancingV2TargetGroupTargetGroupAttribute{..} =
    object
    [ "Key" .= _elasticLoadBalancingV2TargetGroupTargetGroupAttributeKey
    , "Value" .= _elasticLoadBalancingV2TargetGroupTargetGroupAttributeValue
    ]

instance FromJSON ElasticLoadBalancingV2TargetGroupTargetGroupAttribute where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2TargetGroupTargetGroupAttribute <$>
      obj .: "Key" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2TargetGroupTargetGroupAttribute'
-- | containing required fields as arguments.
elasticLoadBalancingV2TargetGroupTargetGroupAttribute
  :: ElasticLoadBalancingV2TargetGroupTargetGroupAttribute
elasticLoadBalancingV2TargetGroupTargetGroupAttribute  =
  ElasticLoadBalancingV2TargetGroupTargetGroupAttribute
  { _elasticLoadBalancingV2TargetGroupTargetGroupAttributeKey = Nothing
  , _elasticLoadBalancingV2TargetGroupTargetGroupAttributeValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattributes.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattributes-key
elbvtgtgaKey :: Lens' ElasticLoadBalancingV2TargetGroupTargetGroupAttribute (Maybe (Val Text))
elbvtgtgaKey = lens _elasticLoadBalancingV2TargetGroupTargetGroupAttributeKey (\s a -> s { _elasticLoadBalancingV2TargetGroupTargetGroupAttributeKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattributes.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattributes-value
elbvtgtgaValue :: Lens' ElasticLoadBalancingV2TargetGroupTargetGroupAttribute (Maybe (Val Text))
elbvtgtgaValue = lens _elasticLoadBalancingV2TargetGroupTargetGroupAttributeValue (\s a -> s { _elasticLoadBalancingV2TargetGroupTargetGroupAttributeValue = a })
