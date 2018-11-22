{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAuthenticateOidcConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerFixedResponseConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRedirectConfig

-- | Full data type definition for ElasticLoadBalancingV2ListenerAction. See
-- 'elasticLoadBalancingV2ListenerAction' for a more convenient constructor.
data ElasticLoadBalancingV2ListenerAction =
  ElasticLoadBalancingV2ListenerAction
  { _elasticLoadBalancingV2ListenerActionAuthenticateCognitoConfig :: Maybe ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig
  , _elasticLoadBalancingV2ListenerActionAuthenticateOidcConfig :: Maybe ElasticLoadBalancingV2ListenerAuthenticateOidcConfig
  , _elasticLoadBalancingV2ListenerActionFixedResponseConfig :: Maybe ElasticLoadBalancingV2ListenerFixedResponseConfig
  , _elasticLoadBalancingV2ListenerActionOrder :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerActionRedirectConfig :: Maybe ElasticLoadBalancingV2ListenerRedirectConfig
  , _elasticLoadBalancingV2ListenerActionTargetGroupArn :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerActionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerAction where
  toJSON ElasticLoadBalancingV2ListenerAction{..} =
    object $
    catMaybes
    [ fmap (("AuthenticateCognitoConfig",) . toJSON) _elasticLoadBalancingV2ListenerActionAuthenticateCognitoConfig
    , fmap (("AuthenticateOidcConfig",) . toJSON) _elasticLoadBalancingV2ListenerActionAuthenticateOidcConfig
    , fmap (("FixedResponseConfig",) . toJSON) _elasticLoadBalancingV2ListenerActionFixedResponseConfig
    , fmap (("Order",) . toJSON . fmap Integer') _elasticLoadBalancingV2ListenerActionOrder
    , fmap (("RedirectConfig",) . toJSON) _elasticLoadBalancingV2ListenerActionRedirectConfig
    , fmap (("TargetGroupArn",) . toJSON) _elasticLoadBalancingV2ListenerActionTargetGroupArn
    , (Just . ("Type",) . toJSON) _elasticLoadBalancingV2ListenerActionType
    ]

instance FromJSON ElasticLoadBalancingV2ListenerAction where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerAction <$>
      (obj .:? "AuthenticateCognitoConfig") <*>
      (obj .:? "AuthenticateOidcConfig") <*>
      (obj .:? "FixedResponseConfig") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Order") <*>
      (obj .:? "RedirectConfig") <*>
      (obj .:? "TargetGroupArn") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerAction' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerAction
  :: Val Text -- ^ 'elbvlaType'
  -> ElasticLoadBalancingV2ListenerAction
elasticLoadBalancingV2ListenerAction typearg =
  ElasticLoadBalancingV2ListenerAction
  { _elasticLoadBalancingV2ListenerActionAuthenticateCognitoConfig = Nothing
  , _elasticLoadBalancingV2ListenerActionAuthenticateOidcConfig = Nothing
  , _elasticLoadBalancingV2ListenerActionFixedResponseConfig = Nothing
  , _elasticLoadBalancingV2ListenerActionOrder = Nothing
  , _elasticLoadBalancingV2ListenerActionRedirectConfig = Nothing
  , _elasticLoadBalancingV2ListenerActionTargetGroupArn = Nothing
  , _elasticLoadBalancingV2ListenerActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticatecognitoconfig
elbvlaAuthenticateCognitoConfig :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe ElasticLoadBalancingV2ListenerAuthenticateCognitoConfig)
elbvlaAuthenticateCognitoConfig = lens _elasticLoadBalancingV2ListenerActionAuthenticateCognitoConfig (\s a -> s { _elasticLoadBalancingV2ListenerActionAuthenticateCognitoConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticateoidcconfig
elbvlaAuthenticateOidcConfig :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe ElasticLoadBalancingV2ListenerAuthenticateOidcConfig)
elbvlaAuthenticateOidcConfig = lens _elasticLoadBalancingV2ListenerActionAuthenticateOidcConfig (\s a -> s { _elasticLoadBalancingV2ListenerActionAuthenticateOidcConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-fixedresponseconfig
elbvlaFixedResponseConfig :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe ElasticLoadBalancingV2ListenerFixedResponseConfig)
elbvlaFixedResponseConfig = lens _elasticLoadBalancingV2ListenerActionFixedResponseConfig (\s a -> s { _elasticLoadBalancingV2ListenerActionFixedResponseConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-order
elbvlaOrder :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe (Val Integer))
elbvlaOrder = lens _elasticLoadBalancingV2ListenerActionOrder (\s a -> s { _elasticLoadBalancingV2ListenerActionOrder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-redirectconfig
elbvlaRedirectConfig :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe ElasticLoadBalancingV2ListenerRedirectConfig)
elbvlaRedirectConfig = lens _elasticLoadBalancingV2ListenerActionRedirectConfig (\s a -> s { _elasticLoadBalancingV2ListenerActionRedirectConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-targetgrouparn
elbvlaTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerAction (Maybe (Val Text))
elbvlaTargetGroupArn = lens _elasticLoadBalancingV2ListenerActionTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerActionTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-type
elbvlaType :: Lens' ElasticLoadBalancingV2ListenerAction (Val Text)
elbvlaType = lens _elasticLoadBalancingV2ListenerActionType (\s a -> s { _elasticLoadBalancingV2ListenerActionType = a })
