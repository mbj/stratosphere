{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerFixedResponseConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerFixedResponseConfig. See
-- 'elasticLoadBalancingV2ListenerFixedResponseConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerFixedResponseConfig =
  ElasticLoadBalancingV2ListenerFixedResponseConfig
  { _elasticLoadBalancingV2ListenerFixedResponseConfigContentType :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerFixedResponseConfigMessageBody :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerFixedResponseConfigStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerFixedResponseConfig where
  toJSON ElasticLoadBalancingV2ListenerFixedResponseConfig{..} =
    object $
    catMaybes
    [ fmap (("ContentType",) . toJSON) _elasticLoadBalancingV2ListenerFixedResponseConfigContentType
    , fmap (("MessageBody",) . toJSON) _elasticLoadBalancingV2ListenerFixedResponseConfigMessageBody
    , (Just . ("StatusCode",) . toJSON) _elasticLoadBalancingV2ListenerFixedResponseConfigStatusCode
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerFixedResponseConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerFixedResponseConfig
  :: Val Text -- ^ 'elbvlfrcStatusCode'
  -> ElasticLoadBalancingV2ListenerFixedResponseConfig
elasticLoadBalancingV2ListenerFixedResponseConfig statusCodearg =
  ElasticLoadBalancingV2ListenerFixedResponseConfig
  { _elasticLoadBalancingV2ListenerFixedResponseConfigContentType = Nothing
  , _elasticLoadBalancingV2ListenerFixedResponseConfigMessageBody = Nothing
  , _elasticLoadBalancingV2ListenerFixedResponseConfigStatusCode = statusCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-contenttype
elbvlfrcContentType :: Lens' ElasticLoadBalancingV2ListenerFixedResponseConfig (Maybe (Val Text))
elbvlfrcContentType = lens _elasticLoadBalancingV2ListenerFixedResponseConfigContentType (\s a -> s { _elasticLoadBalancingV2ListenerFixedResponseConfigContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-messagebody
elbvlfrcMessageBody :: Lens' ElasticLoadBalancingV2ListenerFixedResponseConfig (Maybe (Val Text))
elbvlfrcMessageBody = lens _elasticLoadBalancingV2ListenerFixedResponseConfigMessageBody (\s a -> s { _elasticLoadBalancingV2ListenerFixedResponseConfigMessageBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listener-fixedresponseconfig-statuscode
elbvlfrcStatusCode :: Lens' ElasticLoadBalancingV2ListenerFixedResponseConfig (Val Text)
elbvlfrcStatusCode = lens _elasticLoadBalancingV2ListenerFixedResponseConfigStatusCode (\s a -> s { _elasticLoadBalancingV2ListenerFixedResponseConfigStatusCode = a })
