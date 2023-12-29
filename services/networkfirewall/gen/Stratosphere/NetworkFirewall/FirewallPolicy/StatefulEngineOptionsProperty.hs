module Stratosphere.NetworkFirewall.FirewallPolicy.StatefulEngineOptionsProperty (
        StatefulEngineOptionsProperty(..), mkStatefulEngineOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulEngineOptionsProperty
  = StatefulEngineOptionsProperty {ruleOrder :: (Prelude.Maybe (Value Prelude.Text)),
                                   streamExceptionPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulEngineOptionsProperty :: StatefulEngineOptionsProperty
mkStatefulEngineOptionsProperty
  = StatefulEngineOptionsProperty
      {ruleOrder = Prelude.Nothing,
       streamExceptionPolicy = Prelude.Nothing}
instance ToResourceProperties StatefulEngineOptionsProperty where
  toResourceProperties StatefulEngineOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatefulEngineOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
                            (JSON..=) "StreamExceptionPolicy"
                              Prelude.<$> streamExceptionPolicy])}
instance JSON.ToJSON StatefulEngineOptionsProperty where
  toJSON StatefulEngineOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RuleOrder" Prelude.<$> ruleOrder,
               (JSON..=) "StreamExceptionPolicy"
                 Prelude.<$> streamExceptionPolicy]))
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