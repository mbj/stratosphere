module Stratosphere.Wisdom.MessageTemplate.AgentAttributesProperty (
        AgentAttributesProperty(..), mkAgentAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-agentattributes.html>
    AgentAttributesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-agentattributes.html#cfn-wisdom-messagetemplate-agentattributes-firstname>
                             firstName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-agentattributes.html#cfn-wisdom-messagetemplate-agentattributes-lastname>
                             lastName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentAttributesProperty :: AgentAttributesProperty
mkAgentAttributesProperty
  = AgentAttributesProperty
      {haddock_workaround_ = (), firstName = Prelude.Nothing,
       lastName = Prelude.Nothing}
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