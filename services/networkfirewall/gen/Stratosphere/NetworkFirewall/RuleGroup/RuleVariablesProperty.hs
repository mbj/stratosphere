module Stratosphere.NetworkFirewall.RuleGroup.RuleVariablesProperty (
        module Exports, RuleVariablesProperty(..), mkRuleVariablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.IPSetProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.PortSetProperty as Exports
import Stratosphere.ResourceProperties
data RuleVariablesProperty
  = RuleVariablesProperty {iPSets :: (Prelude.Maybe (Prelude.Map Prelude.Text IPSetProperty)),
                           portSets :: (Prelude.Maybe (Prelude.Map Prelude.Text PortSetProperty))}
mkRuleVariablesProperty :: RuleVariablesProperty
mkRuleVariablesProperty
  = RuleVariablesProperty
      {iPSets = Prelude.Nothing, portSets = Prelude.Nothing}
instance ToResourceProperties RuleVariablesProperty where
  toResourceProperties RuleVariablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleVariables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IPSets" Prelude.<$> iPSets,
                            (JSON..=) "PortSets" Prelude.<$> portSets])}
instance JSON.ToJSON RuleVariablesProperty where
  toJSON RuleVariablesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IPSets" Prelude.<$> iPSets,
               (JSON..=) "PortSets" Prelude.<$> portSets]))
instance Property "IPSets" RuleVariablesProperty where
  type PropertyType "IPSets" RuleVariablesProperty = Prelude.Map Prelude.Text IPSetProperty
  set newValue RuleVariablesProperty {..}
    = RuleVariablesProperty {iPSets = Prelude.pure newValue, ..}
instance Property "PortSets" RuleVariablesProperty where
  type PropertyType "PortSets" RuleVariablesProperty = Prelude.Map Prelude.Text PortSetProperty
  set newValue RuleVariablesProperty {..}
    = RuleVariablesProperty {portSets = Prelude.pure newValue, ..}