module Stratosphere.ECS.TaskDefinition.SystemControlProperty (
        SystemControlProperty(..), mkSystemControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html>
    SystemControlProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace>
                           namespace :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value>
                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemControlProperty :: SystemControlProperty
mkSystemControlProperty
  = SystemControlProperty
      {haddock_workaround_ = (), namespace = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties SystemControlProperty where
  toResourceProperties SystemControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.SystemControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Namespace" Prelude.<$> namespace,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON SystemControlProperty where
  toJSON SystemControlProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Namespace" Prelude.<$> namespace,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Namespace" SystemControlProperty where
  type PropertyType "Namespace" SystemControlProperty = Value Prelude.Text
  set newValue SystemControlProperty {..}
    = SystemControlProperty {namespace = Prelude.pure newValue, ..}
instance Property "Value" SystemControlProperty where
  type PropertyType "Value" SystemControlProperty = Value Prelude.Text
  set newValue SystemControlProperty {..}
    = SystemControlProperty {value = Prelude.pure newValue, ..}