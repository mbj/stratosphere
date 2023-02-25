module Stratosphere.NetworkFirewall.RuleGroup.IPSetProperty (
        IPSetProperty(..), mkIPSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetProperty
  = IPSetProperty {definition :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkIPSetProperty :: IPSetProperty
mkIPSetProperty = IPSetProperty {definition = Prelude.Nothing}
instance ToResourceProperties IPSetProperty where
  toResourceProperties IPSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.IPSet",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition])}
instance JSON.ToJSON IPSetProperty where
  toJSON IPSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition]))
instance Property "Definition" IPSetProperty where
  type PropertyType "Definition" IPSetProperty = ValueList (Value Prelude.Text)
  set newValue IPSetProperty {}
    = IPSetProperty {definition = Prelude.pure newValue, ..}