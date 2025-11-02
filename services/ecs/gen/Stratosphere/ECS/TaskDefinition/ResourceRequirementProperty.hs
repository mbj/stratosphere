module Stratosphere.ECS.TaskDefinition.ResourceRequirementProperty (
        ResourceRequirementProperty(..), mkResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceRequirementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html>
    ResourceRequirementProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-type>
                                 type' :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceRequirementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceRequirementProperty
mkResourceRequirementProperty type' value
  = ResourceRequirementProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties ResourceRequirementProperty where
  toResourceProperties ResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.ResourceRequirement",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ResourceRequirementProperty where
  toJSON ResourceRequirementProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ResourceRequirementProperty where
  type PropertyType "Type" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {type' = newValue, ..}
instance Property "Value" ResourceRequirementProperty where
  type PropertyType "Value" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {value = newValue, ..}