module Stratosphere.ECS.Service.PlacementConstraintProperty (
        PlacementConstraintProperty(..), mkPlacementConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementConstraintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html>
    PlacementConstraintProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-expression>
                                 expression :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-type>
                                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementConstraintProperty ::
  Value Prelude.Text -> PlacementConstraintProperty
mkPlacementConstraintProperty type'
  = PlacementConstraintProperty
      {haddock_workaround_ = (), type' = type',
       expression = Prelude.Nothing}
instance ToResourceProperties PlacementConstraintProperty where
  toResourceProperties PlacementConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.PlacementConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression]))}
instance JSON.ToJSON PlacementConstraintProperty where
  toJSON PlacementConstraintProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression])))
instance Property "Expression" PlacementConstraintProperty where
  type PropertyType "Expression" PlacementConstraintProperty = Value Prelude.Text
  set newValue PlacementConstraintProperty {..}
    = PlacementConstraintProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Type" PlacementConstraintProperty where
  type PropertyType "Type" PlacementConstraintProperty = Value Prelude.Text
  set newValue PlacementConstraintProperty {..}
    = PlacementConstraintProperty {type' = newValue, ..}