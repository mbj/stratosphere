module Stratosphere.Bedrock.Guardrail.TopicConfigProperty (
        TopicConfigProperty(..), mkTopicConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicConfigProperty
  = TopicConfigProperty {definition :: (Value Prelude.Text),
                         examples :: (Prelude.Maybe (ValueList Prelude.Text)),
                         name :: (Value Prelude.Text),
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TopicConfigProperty
mkTopicConfigProperty definition name type'
  = TopicConfigProperty
      {definition = definition, name = name, type' = type',
       examples = Prelude.Nothing}
instance ToResourceProperties TopicConfigProperty where
  toResourceProperties TopicConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.TopicConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Examples" Prelude.<$> examples]))}
instance JSON.ToJSON TopicConfigProperty where
  toJSON TopicConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Examples" Prelude.<$> examples])))
instance Property "Definition" TopicConfigProperty where
  type PropertyType "Definition" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {definition = newValue, ..}
instance Property "Examples" TopicConfigProperty where
  type PropertyType "Examples" TopicConfigProperty = ValueList Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {examples = Prelude.pure newValue, ..}
instance Property "Name" TopicConfigProperty where
  type PropertyType "Name" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {name = newValue, ..}
instance Property "Type" TopicConfigProperty where
  type PropertyType "Type" TopicConfigProperty = Value Prelude.Text
  set newValue TopicConfigProperty {..}
    = TopicConfigProperty {type' = newValue, ..}