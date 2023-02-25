module Stratosphere.S3.Bucket.RoutingRuleProperty (
        module Exports, RoutingRuleProperty(..), mkRoutingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.RedirectRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.RoutingRuleConditionProperty as Exports
import Stratosphere.ResourceProperties
data RoutingRuleProperty
  = RoutingRuleProperty {redirectRule :: RedirectRuleProperty,
                         routingRuleCondition :: (Prelude.Maybe RoutingRuleConditionProperty)}
mkRoutingRuleProperty ::
  RedirectRuleProperty -> RoutingRuleProperty
mkRoutingRuleProperty redirectRule
  = RoutingRuleProperty
      {redirectRule = redirectRule,
       routingRuleCondition = Prelude.Nothing}
instance ToResourceProperties RoutingRuleProperty where
  toResourceProperties RoutingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.RoutingRule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RedirectRule" JSON..= redirectRule]
                           (Prelude.catMaybes
                              [(JSON..=) "RoutingRuleCondition"
                                 Prelude.<$> routingRuleCondition]))}
instance JSON.ToJSON RoutingRuleProperty where
  toJSON RoutingRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RedirectRule" JSON..= redirectRule]
              (Prelude.catMaybes
                 [(JSON..=) "RoutingRuleCondition"
                    Prelude.<$> routingRuleCondition])))
instance Property "RedirectRule" RoutingRuleProperty where
  type PropertyType "RedirectRule" RoutingRuleProperty = RedirectRuleProperty
  set newValue RoutingRuleProperty {..}
    = RoutingRuleProperty {redirectRule = newValue, ..}
instance Property "RoutingRuleCondition" RoutingRuleProperty where
  type PropertyType "RoutingRuleCondition" RoutingRuleProperty = RoutingRuleConditionProperty
  set newValue RoutingRuleProperty {..}
    = RoutingRuleProperty
        {routingRuleCondition = Prelude.pure newValue, ..}