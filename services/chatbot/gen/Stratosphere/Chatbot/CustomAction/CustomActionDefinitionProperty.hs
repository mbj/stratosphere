module Stratosphere.Chatbot.CustomAction.CustomActionDefinitionProperty (
        CustomActionDefinitionProperty(..),
        mkCustomActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactiondefinition.html>
    CustomActionDefinitionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-chatbot-customaction-customactiondefinition.html#cfn-chatbot-customaction-customactiondefinition-commandtext>
                                    commandText :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionDefinitionProperty ::
  Value Prelude.Text -> CustomActionDefinitionProperty
mkCustomActionDefinitionProperty commandText
  = CustomActionDefinitionProperty
      {haddock_workaround_ = (), commandText = commandText}
instance ToResourceProperties CustomActionDefinitionProperty where
  toResourceProperties CustomActionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::CustomAction.CustomActionDefinition",
         supportsTags = Prelude.False,
         properties = ["CommandText" JSON..= commandText]}
instance JSON.ToJSON CustomActionDefinitionProperty where
  toJSON CustomActionDefinitionProperty {..}
    = JSON.object ["CommandText" JSON..= commandText]
instance Property "CommandText" CustomActionDefinitionProperty where
  type PropertyType "CommandText" CustomActionDefinitionProperty = Value Prelude.Text
  set newValue CustomActionDefinitionProperty {..}
    = CustomActionDefinitionProperty {commandText = newValue, ..}