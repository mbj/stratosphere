
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleFixedResponseConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleForwardConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRedirectConfig

-- | Full data type definition for ElasticLoadBalancingV2ListenerRuleAction.
-- See 'elasticLoadBalancingV2ListenerRuleAction' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleAction =
  ElasticLoadBalancingV2ListenerRuleAction
  { _elasticLoadBalancingV2ListenerRuleActionAuthenticateCognitoConfig :: Maybe ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig
  , _elasticLoadBalancingV2ListenerRuleActionAuthenticateOidcConfig :: Maybe ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig
  , _elasticLoadBalancingV2ListenerRuleActionFixedResponseConfig :: Maybe ElasticLoadBalancingV2ListenerRuleFixedResponseConfig
  , _elasticLoadBalancingV2ListenerRuleActionForwardConfig :: Maybe ElasticLoadBalancingV2ListenerRuleForwardConfig
  , _elasticLoadBalancingV2ListenerRuleActionOrder :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerRuleActionRedirectConfig :: Maybe ElasticLoadBalancingV2ListenerRuleRedirectConfig
  , _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleActionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleAction where
  toJSON ElasticLoadBalancingV2ListenerRuleAction{..} =
    object $
    catMaybes
    [ fmap (("AuthenticateCognitoConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionAuthenticateCognitoConfig
    , fmap (("AuthenticateOidcConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionAuthenticateOidcConfig
    , fmap (("FixedResponseConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionFixedResponseConfig
    , fmap (("ForwardConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionForwardConfig
    , fmap (("Order",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionOrder
    , fmap (("RedirectConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionRedirectConfig
    , fmap (("TargetGroupArn",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn
    , (Just . ("Type",) . toJSON) _elasticLoadBalancingV2ListenerRuleActionType
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleAction' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerRuleAction
  :: Val Text -- ^ 'elbvlraType'
  -> ElasticLoadBalancingV2ListenerRuleAction
elasticLoadBalancingV2ListenerRuleAction typearg =
  ElasticLoadBalancingV2ListenerRuleAction
  { _elasticLoadBalancingV2ListenerRuleActionAuthenticateCognitoConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionAuthenticateOidcConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionFixedResponseConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionForwardConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionOrder = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionRedirectConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn = Nothing
  , _elasticLoadBalancingV2ListenerRuleActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticatecognitoconfig
elbvlraAuthenticateCognitoConfig :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe ElasticLoadBalancingV2ListenerRuleAuthenticateCognitoConfig)
elbvlraAuthenticateCognitoConfig = lens _elasticLoadBalancingV2ListenerRuleActionAuthenticateCognitoConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionAuthenticateCognitoConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticateoidcconfig
elbvlraAuthenticateOidcConfig :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe ElasticLoadBalancingV2ListenerRuleAuthenticateOidcConfig)
elbvlraAuthenticateOidcConfig = lens _elasticLoadBalancingV2ListenerRuleActionAuthenticateOidcConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionAuthenticateOidcConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-fixedresponseconfig
elbvlraFixedResponseConfig :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe ElasticLoadBalancingV2ListenerRuleFixedResponseConfig)
elbvlraFixedResponseConfig = lens _elasticLoadBalancingV2ListenerRuleActionFixedResponseConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionFixedResponseConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-forwardconfig
elbvlraForwardConfig :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe ElasticLoadBalancingV2ListenerRuleForwardConfig)
elbvlraForwardConfig = lens _elasticLoadBalancingV2ListenerRuleActionForwardConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionForwardConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-order
elbvlraOrder :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe (Val Integer))
elbvlraOrder = lens _elasticLoadBalancingV2ListenerRuleActionOrder (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionOrder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-redirectconfig
elbvlraRedirectConfig :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe ElasticLoadBalancingV2ListenerRuleRedirectConfig)
elbvlraRedirectConfig = lens _elasticLoadBalancingV2ListenerRuleActionRedirectConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionRedirectConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-targetgrouparn
elbvlraTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Maybe (Val Text))
elbvlraTargetGroupArn = lens _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-type
elbvlraType :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Val Text)
elbvlraType = lens _elasticLoadBalancingV2ListenerRuleActionType (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionType = a })
