module Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupReferenceProperty (
        module Exports, StatefulRuleGroupReferenceProperty(..),
        mkStatefulRuleGroupReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulRuleGroupReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupreference.html>
    StatefulRuleGroupReferenceProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupreference.html#cfn-networkfirewall-firewallpolicy-statefulrulegroupreference-deepthreatinspection>
                                        deepThreatInspection :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupreference.html#cfn-networkfirewall-firewallpolicy-statefulrulegroupreference-override>
                                        override :: (Prelude.Maybe StatefulRuleGroupOverrideProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupreference.html#cfn-networkfirewall-firewallpolicy-statefulrulegroupreference-priority>
                                        priority :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupreference.html#cfn-networkfirewall-firewallpolicy-statefulrulegroupreference-resourcearn>
                                        resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulRuleGroupReferenceProperty ::
  Value Prelude.Text -> StatefulRuleGroupReferenceProperty
mkStatefulRuleGroupReferenceProperty resourceArn
  = StatefulRuleGroupReferenceProperty
      {haddock_workaround_ = (), resourceArn = resourceArn,
       deepThreatInspection = Prelude.Nothing, override = Prelude.Nothing,
       priority = Prelude.Nothing}
instance ToResourceProperties StatefulRuleGroupReferenceProperty where
  toResourceProperties StatefulRuleGroupReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatefulRuleGroupReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceArn" JSON..= resourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DeepThreatInspection" Prelude.<$> deepThreatInspection,
                               (JSON..=) "Override" Prelude.<$> override,
                               (JSON..=) "Priority" Prelude.<$> priority]))}
instance JSON.ToJSON StatefulRuleGroupReferenceProperty where
  toJSON StatefulRuleGroupReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceArn" JSON..= resourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "DeepThreatInspection" Prelude.<$> deepThreatInspection,
                  (JSON..=) "Override" Prelude.<$> override,
                  (JSON..=) "Priority" Prelude.<$> priority])))
instance Property "DeepThreatInspection" StatefulRuleGroupReferenceProperty where
  type PropertyType "DeepThreatInspection" StatefulRuleGroupReferenceProperty = Value Prelude.Bool
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty
        {deepThreatInspection = Prelude.pure newValue, ..}
instance Property "Override" StatefulRuleGroupReferenceProperty where
  type PropertyType "Override" StatefulRuleGroupReferenceProperty = StatefulRuleGroupOverrideProperty
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty
        {override = Prelude.pure newValue, ..}
instance Property "Priority" StatefulRuleGroupReferenceProperty where
  type PropertyType "Priority" StatefulRuleGroupReferenceProperty = Value Prelude.Integer
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty
        {priority = Prelude.pure newValue, ..}
instance Property "ResourceArn" StatefulRuleGroupReferenceProperty where
  type PropertyType "ResourceArn" StatefulRuleGroupReferenceProperty = Value Prelude.Text
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty {resourceArn = newValue, ..}