module Stratosphere.Wisdom.MessageTemplate.AgentAttributesProperty (
        AgentAttributesProperty(..), mkAgentAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentAttributesProperty
  = AgentAttributesProperty {firstName :: (Prelude.Maybe (Value Prelude.Text)),
                             lastName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentAttributesProperty :: AgentAttributesProperty
mkAgentAttributesProperty
  = AgentAttributesProperty
      {firstName = Prelude.Nothing, lastName = Prelude.Nothing}
instance ToResourceProperties AgentAttributesProperty where
  toResourceProperties AgentAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.AgentAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "LastName" Prelude.<$> lastName])}
instance JSON.ToJSON AgentAttributesProperty where
  toJSON AgentAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "LastName" Prelude.<$> lastName]))
instance Property "FirstName" AgentAttributesProperty where
  type PropertyType "FirstName" AgentAttributesProperty = Value Prelude.Text
  set newValue AgentAttributesProperty {..}
    = AgentAttributesProperty {firstName = Prelude.pure newValue, ..}
instance Property "LastName" AgentAttributesProperty where
  type PropertyType "LastName" AgentAttributesProperty = Value Prelude.Text
  set newValue AgentAttributesProperty {..}
    = AgentAttributesProperty {lastName = Prelude.pure newValue, ..}