module Stratosphere.QuickSight.DataSet.FilterOperationProperty (
        FilterOperationProperty(..), mkFilterOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html>
    FilterOperationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-filteroperation.html#cfn-quicksight-dataset-filteroperation-conditionexpression>
                             conditionExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterOperationProperty :: FilterOperationProperty
mkFilterOperationProperty
  = FilterOperationProperty
      {haddock_workaround_ = (), conditionExpression = Prelude.Nothing}
instance ToResourceProperties FilterOperationProperty where
  toResourceProperties FilterOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.FilterOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionExpression" Prelude.<$> conditionExpression])}
instance JSON.ToJSON FilterOperationProperty where
  toJSON FilterOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionExpression" Prelude.<$> conditionExpression]))
instance Property "ConditionExpression" FilterOperationProperty where
  type PropertyType "ConditionExpression" FilterOperationProperty = Value Prelude.Text
  set newValue FilterOperationProperty {..}
    = FilterOperationProperty
        {conditionExpression = Prelude.pure newValue, ..}