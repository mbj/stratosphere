module Stratosphere.ElasticLoadBalancingV2.ListenerRule.RuleConditionProperty (
        module Exports, RuleConditionProperty(..), mkRuleConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.HostHeaderConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.HttpHeaderConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.HttpRequestMethodConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.PathPatternConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.QueryStringConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.SourceIpConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html>
    RuleConditionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-field>
                           field :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-hostheaderconfig>
                           hostHeaderConfig :: (Prelude.Maybe HostHeaderConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httpheaderconfig>
                           httpHeaderConfig :: (Prelude.Maybe HttpHeaderConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-httprequestmethodconfig>
                           httpRequestMethodConfig :: (Prelude.Maybe HttpRequestMethodConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-pathpatternconfig>
                           pathPatternConfig :: (Prelude.Maybe PathPatternConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-querystringconfig>
                           queryStringConfig :: (Prelude.Maybe QueryStringConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-regexvalues>
                           regexValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-sourceipconfig>
                           sourceIpConfig :: (Prelude.Maybe SourceIpConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rulecondition.html#cfn-elasticloadbalancingv2-listenerrule-rulecondition-values>
                           values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleConditionProperty :: RuleConditionProperty
mkRuleConditionProperty
  = RuleConditionProperty
      {haddock_workaround_ = (), field = Prelude.Nothing,
       hostHeaderConfig = Prelude.Nothing,
       httpHeaderConfig = Prelude.Nothing,
       httpRequestMethodConfig = Prelude.Nothing,
       pathPatternConfig = Prelude.Nothing,
       queryStringConfig = Prelude.Nothing, regexValues = Prelude.Nothing,
       sourceIpConfig = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties RuleConditionProperty where
  toResourceProperties RuleConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.RuleCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "HostHeaderConfig" Prelude.<$> hostHeaderConfig,
                            (JSON..=) "HttpHeaderConfig" Prelude.<$> httpHeaderConfig,
                            (JSON..=) "HttpRequestMethodConfig"
                              Prelude.<$> httpRequestMethodConfig,
                            (JSON..=) "PathPatternConfig" Prelude.<$> pathPatternConfig,
                            (JSON..=) "QueryStringConfig" Prelude.<$> queryStringConfig,
                            (JSON..=) "RegexValues" Prelude.<$> regexValues,
                            (JSON..=) "SourceIpConfig" Prelude.<$> sourceIpConfig,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON RuleConditionProperty where
  toJSON RuleConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "HostHeaderConfig" Prelude.<$> hostHeaderConfig,
               (JSON..=) "HttpHeaderConfig" Prelude.<$> httpHeaderConfig,
               (JSON..=) "HttpRequestMethodConfig"
                 Prelude.<$> httpRequestMethodConfig,
               (JSON..=) "PathPatternConfig" Prelude.<$> pathPatternConfig,
               (JSON..=) "QueryStringConfig" Prelude.<$> queryStringConfig,
               (JSON..=) "RegexValues" Prelude.<$> regexValues,
               (JSON..=) "SourceIpConfig" Prelude.<$> sourceIpConfig,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Field" RuleConditionProperty where
  type PropertyType "Field" RuleConditionProperty = Value Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {field = Prelude.pure newValue, ..}
instance Property "HostHeaderConfig" RuleConditionProperty where
  type PropertyType "HostHeaderConfig" RuleConditionProperty = HostHeaderConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {hostHeaderConfig = Prelude.pure newValue, ..}
instance Property "HttpHeaderConfig" RuleConditionProperty where
  type PropertyType "HttpHeaderConfig" RuleConditionProperty = HttpHeaderConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {httpHeaderConfig = Prelude.pure newValue, ..}
instance Property "HttpRequestMethodConfig" RuleConditionProperty where
  type PropertyType "HttpRequestMethodConfig" RuleConditionProperty = HttpRequestMethodConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {httpRequestMethodConfig = Prelude.pure newValue, ..}
instance Property "PathPatternConfig" RuleConditionProperty where
  type PropertyType "PathPatternConfig" RuleConditionProperty = PathPatternConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {pathPatternConfig = Prelude.pure newValue, ..}
instance Property "QueryStringConfig" RuleConditionProperty where
  type PropertyType "QueryStringConfig" RuleConditionProperty = QueryStringConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {queryStringConfig = Prelude.pure newValue, ..}
instance Property "RegexValues" RuleConditionProperty where
  type PropertyType "RegexValues" RuleConditionProperty = ValueList Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {regexValues = Prelude.pure newValue, ..}
instance Property "SourceIpConfig" RuleConditionProperty where
  type PropertyType "SourceIpConfig" RuleConditionProperty = SourceIpConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {sourceIpConfig = Prelude.pure newValue, ..}
instance Property "Values" RuleConditionProperty where
  type PropertyType "Values" RuleConditionProperty = ValueList Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {values = Prelude.pure newValue, ..}