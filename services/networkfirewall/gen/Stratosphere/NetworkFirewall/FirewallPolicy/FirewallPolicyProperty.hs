module Stratosphere.NetworkFirewall.FirewallPolicy.FirewallPolicyProperty (
        module Exports, FirewallPolicyProperty(..),
        mkFirewallPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.CustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.PolicyVariablesProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulEngineOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatelessRuleGroupReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirewallPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html>
    FirewallPolicyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-policyvariables>
                            policyVariables :: (Prelude.Maybe PolicyVariablesProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefuldefaultactions>
                            statefulDefaultActions :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefulengineoptions>
                            statefulEngineOptions :: (Prelude.Maybe StatefulEngineOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statefulrulegroupreferences>
                            statefulRuleGroupReferences :: (Prelude.Maybe [StatefulRuleGroupReferenceProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelesscustomactions>
                            statelessCustomActions :: (Prelude.Maybe [CustomActionProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessdefaultactions>
                            statelessDefaultActions :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessfragmentdefaultactions>
                            statelessFragmentDefaultActions :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-statelessrulegroupreferences>
                            statelessRuleGroupReferences :: (Prelude.Maybe [StatelessRuleGroupReferenceProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy-tlsinspectionconfigurationarn>
                            tLSInspectionConfigurationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallPolicyProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> FirewallPolicyProperty
mkFirewallPolicyProperty
  statelessDefaultActions
  statelessFragmentDefaultActions
  = FirewallPolicyProperty
      {haddock_workaround_ = (),
       statelessDefaultActions = statelessDefaultActions,
       statelessFragmentDefaultActions = statelessFragmentDefaultActions,
       policyVariables = Prelude.Nothing,
       statefulDefaultActions = Prelude.Nothing,
       statefulEngineOptions = Prelude.Nothing,
       statefulRuleGroupReferences = Prelude.Nothing,
       statelessCustomActions = Prelude.Nothing,
       statelessRuleGroupReferences = Prelude.Nothing,
       tLSInspectionConfigurationArn = Prelude.Nothing}
instance ToResourceProperties FirewallPolicyProperty where
  toResourceProperties FirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.FirewallPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatelessDefaultActions" JSON..= statelessDefaultActions,
                            "StatelessFragmentDefaultActions"
                              JSON..= statelessFragmentDefaultActions]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyVariables" Prelude.<$> policyVariables,
                               (JSON..=) "StatefulDefaultActions"
                                 Prelude.<$> statefulDefaultActions,
                               (JSON..=) "StatefulEngineOptions"
                                 Prelude.<$> statefulEngineOptions,
                               (JSON..=) "StatefulRuleGroupReferences"
                                 Prelude.<$> statefulRuleGroupReferences,
                               (JSON..=) "StatelessCustomActions"
                                 Prelude.<$> statelessCustomActions,
                               (JSON..=) "StatelessRuleGroupReferences"
                                 Prelude.<$> statelessRuleGroupReferences,
                               (JSON..=) "TLSInspectionConfigurationArn"
                                 Prelude.<$> tLSInspectionConfigurationArn]))}
instance JSON.ToJSON FirewallPolicyProperty where
  toJSON FirewallPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatelessDefaultActions" JSON..= statelessDefaultActions,
               "StatelessFragmentDefaultActions"
                 JSON..= statelessFragmentDefaultActions]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyVariables" Prelude.<$> policyVariables,
                  (JSON..=) "StatefulDefaultActions"
                    Prelude.<$> statefulDefaultActions,
                  (JSON..=) "StatefulEngineOptions"
                    Prelude.<$> statefulEngineOptions,
                  (JSON..=) "StatefulRuleGroupReferences"
                    Prelude.<$> statefulRuleGroupReferences,
                  (JSON..=) "StatelessCustomActions"
                    Prelude.<$> statelessCustomActions,
                  (JSON..=) "StatelessRuleGroupReferences"
                    Prelude.<$> statelessRuleGroupReferences,
                  (JSON..=) "TLSInspectionConfigurationArn"
                    Prelude.<$> tLSInspectionConfigurationArn])))
instance Property "PolicyVariables" FirewallPolicyProperty where
  type PropertyType "PolicyVariables" FirewallPolicyProperty = PolicyVariablesProperty
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {policyVariables = Prelude.pure newValue, ..}
instance Property "StatefulDefaultActions" FirewallPolicyProperty where
  type PropertyType "StatefulDefaultActions" FirewallPolicyProperty = ValueList Prelude.Text
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
  type PropertyType "StatelessDefaultActions" FirewallPolicyProperty = ValueList Prelude.Text
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty {statelessDefaultActions = newValue, ..}
instance Property "StatelessFragmentDefaultActions" FirewallPolicyProperty where
  type PropertyType "StatelessFragmentDefaultActions" FirewallPolicyProperty = ValueList Prelude.Text
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statelessFragmentDefaultActions = newValue, ..}
instance Property "StatelessRuleGroupReferences" FirewallPolicyProperty where
  type PropertyType "StatelessRuleGroupReferences" FirewallPolicyProperty = [StatelessRuleGroupReferenceProperty]
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {statelessRuleGroupReferences = Prelude.pure newValue, ..}
instance Property "TLSInspectionConfigurationArn" FirewallPolicyProperty where
  type PropertyType "TLSInspectionConfigurationArn" FirewallPolicyProperty = Value Prelude.Text
  set newValue FirewallPolicyProperty {..}
    = FirewallPolicyProperty
        {tLSInspectionConfigurationArn = Prelude.pure newValue, ..}