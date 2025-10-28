module Stratosphere.ECS.TaskDefinition.TaskDefinitionPlacementConstraintProperty (
        TaskDefinitionPlacementConstraintProperty(..),
        mkTaskDefinitionPlacementConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskDefinitionPlacementConstraintProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html>
    TaskDefinitionPlacementConstraintProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-expression>
                                               expression :: (Prelude.Maybe (Value Prelude.Text)),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-type>
                                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskDefinitionPlacementConstraintProperty ::
  Value Prelude.Text -> TaskDefinitionPlacementConstraintProperty
mkTaskDefinitionPlacementConstraintProperty type'
  = TaskDefinitionPlacementConstraintProperty
      {type' = type', expression = Prelude.Nothing}
instance ToResourceProperties TaskDefinitionPlacementConstraintProperty where
  toResourceProperties TaskDefinitionPlacementConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.TaskDefinitionPlacementConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression]))}
instance JSON.ToJSON TaskDefinitionPlacementConstraintProperty where
  toJSON TaskDefinitionPlacementConstraintProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression])))
instance Property "Expression" TaskDefinitionPlacementConstraintProperty where
  type PropertyType "Expression" TaskDefinitionPlacementConstraintProperty = Value Prelude.Text
  set newValue TaskDefinitionPlacementConstraintProperty {..}
    = TaskDefinitionPlacementConstraintProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Type" TaskDefinitionPlacementConstraintProperty where
  type PropertyType "Type" TaskDefinitionPlacementConstraintProperty = Value Prelude.Text
  set newValue TaskDefinitionPlacementConstraintProperty {..}
    = TaskDefinitionPlacementConstraintProperty {type' = newValue, ..}