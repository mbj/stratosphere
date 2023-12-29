module Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleProperty (
        module Exports, StatefulRuleProperty(..), mkStatefulRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.HeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RuleOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulRuleProperty
  = StatefulRuleProperty {action :: (Value Prelude.Text),
                          header :: HeaderProperty,
                          ruleOptions :: [RuleOptionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulRuleProperty ::
  Value Prelude.Text
  -> HeaderProperty -> [RuleOptionProperty] -> StatefulRuleProperty
mkStatefulRuleProperty action header ruleOptions
  = StatefulRuleProperty
      {action = action, header = header, ruleOptions = ruleOptions}
instance ToResourceProperties StatefulRuleProperty where
  toResourceProperties StatefulRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.StatefulRule",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Header" JSON..= header,
                       "RuleOptions" JSON..= ruleOptions]}
instance JSON.ToJSON StatefulRuleProperty where
  toJSON StatefulRuleProperty {..}
    = JSON.object
        ["Action" JSON..= action, "Header" JSON..= header,
         "RuleOptions" JSON..= ruleOptions]
instance Property "Action" StatefulRuleProperty where
  type PropertyType "Action" StatefulRuleProperty = Value Prelude.Text
  set newValue StatefulRuleProperty {..}
    = StatefulRuleProperty {action = newValue, ..}
instance Property "Header" StatefulRuleProperty where
  type PropertyType "Header" StatefulRuleProperty = HeaderProperty
  set newValue StatefulRuleProperty {..}
    = StatefulRuleProperty {header = newValue, ..}
instance Property "RuleOptions" StatefulRuleProperty where
  type PropertyType "RuleOptions" StatefulRuleProperty = [RuleOptionProperty]
  set newValue StatefulRuleProperty {..}
    = StatefulRuleProperty {ruleOptions = newValue, ..}