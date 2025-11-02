module Stratosphere.Pipes.Pipe.PlacementConstraintProperty (
        PlacementConstraintProperty(..), mkPlacementConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementConstraintProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementconstraint.html>
    PlacementConstraintProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementconstraint.html#cfn-pipes-pipe-placementconstraint-expression>
                                 expression :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-placementconstraint.html#cfn-pipes-pipe-placementconstraint-type>
                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementConstraintProperty :: PlacementConstraintProperty
mkPlacementConstraintProperty
  = PlacementConstraintProperty
      {haddock_workaround_ = (), expression = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties PlacementConstraintProperty where
  toResourceProperties PlacementConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PlacementConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON PlacementConstraintProperty where
  toJSON PlacementConstraintProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Expression" PlacementConstraintProperty where
  type PropertyType "Expression" PlacementConstraintProperty = Value Prelude.Text
  set newValue PlacementConstraintProperty {..}
    = PlacementConstraintProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Type" PlacementConstraintProperty where
  type PropertyType "Type" PlacementConstraintProperty = Value Prelude.Text
  set newValue PlacementConstraintProperty {..}
    = PlacementConstraintProperty {type' = Prelude.pure newValue, ..}