
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRuleCondition where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHostHeaderConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRulePathPatternConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleQueryStringConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleSourceIpConfig

-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleRuleCondition. See
-- 'elasticLoadBalancingV2ListenerRuleRuleCondition' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleRuleCondition =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHostHeaderConfig :: Maybe ElasticLoadBalancingV2ListenerRuleHostHeaderConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHttpHeaderConfig :: Maybe ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHttpRequestMethodConfig :: Maybe ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionPathPatternConfig :: Maybe ElasticLoadBalancingV2ListenerRulePathPatternConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionQueryStringConfig :: Maybe ElasticLoadBalancingV2ListenerRuleQueryStringConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionSourceIpConfig :: Maybe ElasticLoadBalancingV2ListenerRuleSourceIpConfig
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  toJSON ElasticLoadBalancingV2ListenerRuleRuleCondition{..} =
    object $
    catMaybes
    [ fmap (("Field",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionField
    , fmap (("HostHeaderConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionHostHeaderConfig
    , fmap (("HttpHeaderConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionHttpHeaderConfig
    , fmap (("HttpRequestMethodConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionHttpRequestMethodConfig
    , fmap (("PathPatternConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionPathPatternConfig
    , fmap (("QueryStringConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionQueryStringConfig
    , fmap (("SourceIpConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionSourceIpConfig
    , fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleRuleCondition'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleRuleCondition
  :: ElasticLoadBalancingV2ListenerRuleRuleCondition
elasticLoadBalancingV2ListenerRuleRuleCondition  =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHostHeaderConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHttpHeaderConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionHttpRequestMethodConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionPathPatternConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionQueryStringConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionSourceIpConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
elbvlrrcField :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe (Val Text))
elbvlrrcField = lens _elasticLoadBalancingV2ListenerRuleRuleConditionField (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig
elbvlrrcHostHeaderConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRuleHostHeaderConfig)
elbvlrrcHostHeaderConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionHostHeaderConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionHostHeaderConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig
elbvlrrcHttpHeaderConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig)
elbvlrrcHttpHeaderConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionHttpHeaderConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionHttpHeaderConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig
elbvlrrcHttpRequestMethodConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig)
elbvlrrcHttpRequestMethodConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionHttpRequestMethodConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionHttpRequestMethodConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig
elbvlrrcPathPatternConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRulePathPatternConfig)
elbvlrrcPathPatternConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionPathPatternConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionPathPatternConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig
elbvlrrcQueryStringConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRuleQueryStringConfig)
elbvlrrcQueryStringConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionQueryStringConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionQueryStringConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig
elbvlrrcSourceIpConfig :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe ElasticLoadBalancingV2ListenerRuleSourceIpConfig)
elbvlrrcSourceIpConfig = lens _elasticLoadBalancingV2ListenerRuleRuleConditionSourceIpConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionSourceIpConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
elbvlrrcValues :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe (ValList Text))
elbvlrrcValues = lens _elasticLoadBalancingV2ListenerRuleRuleConditionValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionValues = a })
