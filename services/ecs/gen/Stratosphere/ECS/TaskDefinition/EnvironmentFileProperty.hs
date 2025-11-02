module Stratosphere.ECS.TaskDefinition.EnvironmentFileProperty (
        EnvironmentFileProperty(..), mkEnvironmentFileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentFileProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html>
    EnvironmentFileProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-type>
                             type' :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentFileProperty :: EnvironmentFileProperty
mkEnvironmentFileProperty
  = EnvironmentFileProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EnvironmentFileProperty where
  toResourceProperties EnvironmentFileProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.EnvironmentFile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EnvironmentFileProperty where
  toJSON EnvironmentFileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Type" EnvironmentFileProperty where
  type PropertyType "Type" EnvironmentFileProperty = Value Prelude.Text
  set newValue EnvironmentFileProperty {..}
    = EnvironmentFileProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentFileProperty where
  type PropertyType "Value" EnvironmentFileProperty = Value Prelude.Text
  set newValue EnvironmentFileProperty {..}
    = EnvironmentFileProperty {value = Prelude.pure newValue, ..}