module Stratosphere.NetworkFirewall.RuleGroup.PortSetProperty (
        PortSetProperty(..), mkPortSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortSetProperty
  = PortSetProperty {definition :: (Prelude.Maybe (ValueList Prelude.Text))}
mkPortSetProperty :: PortSetProperty
mkPortSetProperty = PortSetProperty {definition = Prelude.Nothing}
instance ToResourceProperties PortSetProperty where
  toResourceProperties PortSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.PortSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition])}
instance JSON.ToJSON PortSetProperty where
  toJSON PortSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition]))
instance Property "Definition" PortSetProperty where
  type PropertyType "Definition" PortSetProperty = ValueList Prelude.Text
  set newValue PortSetProperty {}
    = PortSetProperty {definition = Prelude.pure newValue, ..}