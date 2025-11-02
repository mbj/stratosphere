module Stratosphere.NetworkFirewall.FirewallPolicy.StatefulEngineOptionsProperty (
        module Exports, StatefulEngineOptionsProperty(..),
        mkStatefulEngineOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.FlowTimeoutsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulEngineOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulengineoptions.html>
    StatefulEngineOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulengineoptions.html#cfn-networkfirewall-firewallpolicy-statefulengineoptions-flowtimeouts>
                                   flowTimeouts :: (Prelude.Maybe FlowTimeoutsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulengineoptions.html#cfn-networkfirewall-firewallpolicy-statefulengineoptions-ruleorder>
                                   ruleOrder :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulengineoptions.html#cfn-networkfirewall-firewallpolicy-statefulengineoptions-streamexceptionpolicy>
                                   streamExceptionPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulEngineOptionsProperty :: StatefulEngineOptionsProperty
mkStatefulEngineOptionsProperty
  = StatefulEngineOptionsProperty
      {haddock_workaround_ = (), flowTimeouts = Prelude.Nothing,
       ruleOrder = Prelude.Nothing,
       streamExceptionPolicy = Prelude.Nothing}
instance ToResourceProperties StatefulEngineOptionsProperty where
  toResourceProperties StatefulEngineOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatefulEngineOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FlowTimeouts" Prelude.<$> flowTimeouts,
                            (JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
                            (JSON..=) "StreamExceptionPolicy"
                              Prelude.<$> streamExceptionPolicy])}
instance JSON.ToJSON StatefulEngineOptionsProperty where
  toJSON StatefulEngineOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FlowTimeouts" Prelude.<$> flowTimeouts,
               (JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
               (JSON..=) "StreamExceptionPolicy"
                 Prelude.<$> streamExceptionPolicy]))
instance Property "FlowTimeouts" StatefulEngineOptionsProperty where
  type PropertyType "FlowTimeouts" StatefulEngineOptionsProperty = FlowTimeoutsProperty
  set newValue StatefulEngineOptionsProperty {..}
    = StatefulEngineOptionsProperty
        {flowTimeouts = Prelude.pure newValue, ..}
instance Property "RuleOrder" StatefulEngineOptionsProperty where
  type PropertyType "RuleOrder" StatefulEngineOptionsProperty = Value Prelude.Text
  set newValue StatefulEngineOptionsProperty {..}
    = StatefulEngineOptionsProperty
        {ruleOrder = Prelude.pure newValue, ..}
instance Property "StreamExceptionPolicy" StatefulEngineOptionsProperty where
  type PropertyType "StreamExceptionPolicy" StatefulEngineOptionsProperty = Value Prelude.Text
  set newValue StatefulEngineOptionsProperty {..}
    = StatefulEngineOptionsProperty
        {streamExceptionPolicy = Prelude.pure newValue, ..}