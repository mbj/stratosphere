module Stratosphere.ECS.TaskDefinition.KeyValuePairProperty (
        KeyValuePairProperty(..), mkKeyValuePairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValuePairProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-keyvaluepair.html>
    KeyValuePairProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-keyvaluepair.html#cfn-ecs-taskdefinition-keyvaluepair-name>
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-keyvaluepair.html#cfn-ecs-taskdefinition-keyvaluepair-value>
                          value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyValuePairProperty :: KeyValuePairProperty
mkKeyValuePairProperty
  = KeyValuePairProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties KeyValuePairProperty where
  toResourceProperties KeyValuePairProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.KeyValuePair",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON KeyValuePairProperty where
  toJSON KeyValuePairProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" KeyValuePairProperty where
  type PropertyType "Name" KeyValuePairProperty = Value Prelude.Text
  set newValue KeyValuePairProperty {..}
    = KeyValuePairProperty {name = Prelude.pure newValue, ..}
instance Property "Value" KeyValuePairProperty where
  type PropertyType "Value" KeyValuePairProperty = Value Prelude.Text
  set newValue KeyValuePairProperty {..}
    = KeyValuePairProperty {value = Prelude.pure newValue, ..}