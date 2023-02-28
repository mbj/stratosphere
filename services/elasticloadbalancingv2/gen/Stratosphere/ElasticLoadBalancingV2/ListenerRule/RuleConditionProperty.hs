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
  = RuleConditionProperty {field :: (Prelude.Maybe (Value Prelude.Text)),
                           hostHeaderConfig :: (Prelude.Maybe HostHeaderConfigProperty),
                           httpHeaderConfig :: (Prelude.Maybe HttpHeaderConfigProperty),
                           httpRequestMethodConfig :: (Prelude.Maybe HttpRequestMethodConfigProperty),
                           pathPatternConfig :: (Prelude.Maybe PathPatternConfigProperty),
                           queryStringConfig :: (Prelude.Maybe QueryStringConfigProperty),
                           sourceIpConfig :: (Prelude.Maybe SourceIpConfigProperty),
                           values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkRuleConditionProperty :: RuleConditionProperty
mkRuleConditionProperty
  = RuleConditionProperty
      {field = Prelude.Nothing, hostHeaderConfig = Prelude.Nothing,
       httpHeaderConfig = Prelude.Nothing,
       httpRequestMethodConfig = Prelude.Nothing,
       pathPatternConfig = Prelude.Nothing,
       queryStringConfig = Prelude.Nothing,
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
instance Property "SourceIpConfig" RuleConditionProperty where
  type PropertyType "SourceIpConfig" RuleConditionProperty = SourceIpConfigProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {sourceIpConfig = Prelude.pure newValue, ..}
instance Property "Values" RuleConditionProperty where
  type PropertyType "Values" RuleConditionProperty = ValueList Prelude.Text
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {values = Prelude.pure newValue, ..}