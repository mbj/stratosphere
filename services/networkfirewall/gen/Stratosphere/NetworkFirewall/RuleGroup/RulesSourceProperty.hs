module Stratosphere.NetworkFirewall.RuleGroup.RulesSourceProperty (
        module Exports, RulesSourceProperty(..), mkRulesSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RulesSourceListProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.StatelessRulesAndCustomActionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RulesSourceProperty
  = RulesSourceProperty {rulesSourceList :: (Prelude.Maybe RulesSourceListProperty),
                         rulesString :: (Prelude.Maybe (Value Prelude.Text)),
                         statefulRules :: (Prelude.Maybe [StatefulRuleProperty]),
                         statelessRulesAndCustomActions :: (Prelude.Maybe StatelessRulesAndCustomActionsProperty)}
mkRulesSourceProperty :: RulesSourceProperty
mkRulesSourceProperty
  = RulesSourceProperty
      {rulesSourceList = Prelude.Nothing, rulesString = Prelude.Nothing,
       statefulRules = Prelude.Nothing,
       statelessRulesAndCustomActions = Prelude.Nothing}
instance ToResourceProperties RulesSourceProperty where
  toResourceProperties RulesSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RulesSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RulesSourceList" Prelude.<$> rulesSourceList,
                            (JSON..=) "RulesString" Prelude.<$> rulesString,
                            (JSON..=) "StatefulRules" Prelude.<$> statefulRules,
                            (JSON..=) "StatelessRulesAndCustomActions"
                              Prelude.<$> statelessRulesAndCustomActions])}
instance JSON.ToJSON RulesSourceProperty where
  toJSON RulesSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RulesSourceList" Prelude.<$> rulesSourceList,
               (JSON..=) "RulesString" Prelude.<$> rulesString,
               (JSON..=) "StatefulRules" Prelude.<$> statefulRules,
               (JSON..=) "StatelessRulesAndCustomActions"
                 Prelude.<$> statelessRulesAndCustomActions]))
instance Property "RulesSourceList" RulesSourceProperty where
  type PropertyType "RulesSourceList" RulesSourceProperty = RulesSourceListProperty
  set newValue RulesSourceProperty {..}
    = RulesSourceProperty {rulesSourceList = Prelude.pure newValue, ..}
instance Property "RulesString" RulesSourceProperty where
  type PropertyType "RulesString" RulesSourceProperty = Value Prelude.Text
  set newValue RulesSourceProperty {..}
    = RulesSourceProperty {rulesString = Prelude.pure newValue, ..}
instance Property "StatefulRules" RulesSourceProperty where
  type PropertyType "StatefulRules" RulesSourceProperty = [StatefulRuleProperty]
  set newValue RulesSourceProperty {..}
    = RulesSourceProperty {statefulRules = Prelude.pure newValue, ..}
instance Property "StatelessRulesAndCustomActions" RulesSourceProperty where
  type PropertyType "StatelessRulesAndCustomActions" RulesSourceProperty = StatelessRulesAndCustomActionsProperty
  set newValue RulesSourceProperty {..}
    = RulesSourceProperty
        {statelessRulesAndCustomActions = Prelude.pure newValue, ..}