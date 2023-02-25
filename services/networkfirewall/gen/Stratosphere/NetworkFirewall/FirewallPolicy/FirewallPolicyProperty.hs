module Stratosphere.NetworkFirewall.FirewallPolicy.FirewallPolicyProperty (
        module Exports, FirewallPolicyProperty(..),
        mkFirewallPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.CustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulEngineOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatelessRuleGroupReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirewallPolicyProperty
  = FirewallPolicyProperty {statefulDefaultActions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                            statefulEngineOptions :: (Prelude.Maybe StatefulEngineOptionsProperty),
                            statefulRuleGroupReferences :: (Prelude.Maybe [StatefulRuleGroupReferenceProperty]),
                            statelessCustomActions :: (Prelude.Maybe [CustomActionProperty]),
                            statelessDefaultActions :: (ValueList (Value Prelude.Text)),
                            statelessFragmentDefaultActions :: (ValueList (Value Prelude.Text)),
                            statelessRuleGroupReferences :: (Prelude.Maybe [StatelessRuleGroupReferenceProperty])}
mkFirewallPolicyProperty ::
  ValueList (Value Prelude.Text)
  -> ValueList (Value Prelude.Text) -> FirewallPolicyProperty
mkFirewallPolicyProperty
  statelessDefaultActions
  statelessFragmentDefaultActions
  = FirewallPolicyProperty
      {statelessDefaultActions = statelessDefaultActions,
       statelessFragmentDefaultActions = statelessFragmentDefaultActions,
       statefulDefaultActions = Prelude.Nothing,
       statefulEngineOptions = Prelude.Nothing,
       statefulRuleGroupReferences = Prelude.Nothing,
       statelessCustomActions = Prelude.Nothing,
       statelessRuleGroupReferences = Prelude.Nothing}
instance ToResourceProperties FirewallPolicyProperty where
  toResourceProperties FirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.FirewallPolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatelessDefaultActions" JSON..= statelessDefaultActions,
                            "StatelessFragmentDefaultActions"
                              JSON..= statelessFragmentDefaultActions]
                           (Prelude.catMaybes
                              [(JSON..=) "StatefulDefaultActions"
                                 Prelude.<$> statefulDefaultActions,
                               (JSON..=) "StatefulEngineOptions"
                                 Prelude.<$> statefulEngineOptions,
                               (JSON..=) "StatefulRuleGroupReferences"
                                 Prelude.<$> statefulRuleGroupReferences,
                               (JSON..=) "StatelessCustomActions"
                                 Prelude.<$> statelessCustomActions,
                               (JSON..=) "StatelessRuleGroupReferences"
                                 Prelude.<$> statelessRuleGroupReferences]))}
instance JSON.ToJSON FirewallPolicyProperty where
  toJSON FirewallPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatelessDefaultActions" JSON..= statelessDefaultActions,
               "StatelessFragmentDefaultActions"
                 JSON..= statelessFragmentDefaultActions]
              (Prelude.catMaybes
                 [(JSON..=) "StatefulDefaultActions"
                    Prelude.<$> statefulDefaultActions,
                  (JSON..=) "StatefulEngineOptions"
                    Prelude.<$> statefulEngineOptions,
                  (JSON..=) "StatefulRuleGroupReferences"
                    Prelude.<$> statefulRuleGroupReferences,
                  (JSON..=) "StatelessCustomActions"
                    Prelude.<$> statelessCustomActions,
                  (JSON..=) "StatelessRuleGroupReferences"
                    Prelude.<$> statelessRuleGroupReferences])))
instance Property "StatefulDefaultActions" FirewallPolicyProperty where
  type PropertyType "StatefulDefaultActions" FirewallPolicyProperty = ValueList (Value Prelude.Text)
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statefulDefaultActions = Prelude.pure newValue, ..}
instance Property "StatefulEngineOptions" FirewallPolicyProperty where
  type PropertyType "StatefulEngineOptions" FirewallPolicyProperty = StatefulEngineOptionsProperty
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statefulEngineOptions = Prelude.pure newValue, ..}
instance Property "StatefulRuleGroupReferences" FirewallPolicyProperty where
  type PropertyType "StatefulRuleGroupReferences" FirewallPolicyProperty = [StatefulRuleGroupReferenceProperty]
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statefulRuleGroupReferences = Prelude.pure newValue, ..}
instance Property "StatelessCustomActions" FirewallPolicyProperty where
  type PropertyType "StatelessCustomActions" FirewallPolicyProperty = [CustomActionProperty]
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statelessCustomActions = Prelude.pure newValue, ..}
instance Property "StatelessDefaultActions" FirewallPolicyProperty where
  type PropertyType "StatelessDefaultActions" FirewallPolicyProperty = ValueList (Value Prelude.Text)
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty {statelessDefaultActions = newValue, ..}
instance Property "StatelessFragmentDefaultActions" FirewallPolicyProperty where
  type PropertyType "StatelessFragmentDefaultActions" FirewallPolicyProperty = ValueList (Value Prelude.Text)
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statelessFragmentDefaultActions = newValue, ..}
instance Property "StatelessRuleGroupReferences" FirewallPolicyProperty where
  type PropertyType "StatelessRuleGroupReferences" FirewallPolicyProperty = [StatelessRuleGroupReferenceProperty]
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statelessRuleGroupReferences = Prelude.pure newValue, ..}