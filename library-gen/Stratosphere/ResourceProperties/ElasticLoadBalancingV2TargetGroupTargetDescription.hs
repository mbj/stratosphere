{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupTargetDescription where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingV2TargetGroupTargetDescription. See
-- | 'elasticLoadBalancingV2TargetGroupTargetDescription' for a more
-- | convenient constructor.
data ElasticLoadBalancingV2TargetGroupTargetDescription =
  ElasticLoadBalancingV2TargetGroupTargetDescription
  { _elasticLoadBalancingV2TargetGroupTargetDescriptionId :: Val Text
  , _elasticLoadBalancingV2TargetGroupTargetDescriptionPort :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingV2TargetGroupTargetDescription where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 51, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingV2TargetGroupTargetDescription where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 51, omitNothingFields = True }

-- | Constructor for 'ElasticLoadBalancingV2TargetGroupTargetDescription'
-- | containing required fields as arguments.
elasticLoadBalancingV2TargetGroupTargetDescription
  :: Val Text -- ^ 'elbvtgtdId'
  -> ElasticLoadBalancingV2TargetGroupTargetDescription
elasticLoadBalancingV2TargetGroupTargetDescription idarg =
  ElasticLoadBalancingV2TargetGroupTargetDescription
  { _elasticLoadBalancingV2TargetGroupTargetDescriptionId = idarg
  , _elasticLoadBalancingV2TargetGroupTargetDescriptionPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-id
elbvtgtdId :: Lens' ElasticLoadBalancingV2TargetGroupTargetDescription (Val Text)
elbvtgtdId = lens _elasticLoadBalancingV2TargetGroupTargetDescriptionId (\s a -> s { _elasticLoadBalancingV2TargetGroupTargetDescriptionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-port
elbvtgtdPort :: Lens' ElasticLoadBalancingV2TargetGroupTargetDescription (Maybe (Val Integer'))
elbvtgtdPort = lens _elasticLoadBalancingV2TargetGroupTargetDescriptionPort (\s a -> s { _elasticLoadBalancingV2TargetGroupTargetDescriptionPort = a })
