module Stratosphere.QuickSight.DataSet.FilterOperationProperty (
        FilterOperationProperty(..), mkFilterOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterOperationProperty
  = FilterOperationProperty {conditionExpression :: (Value Prelude.Text)}
mkFilterOperationProperty ::
  Value Prelude.Text -> FilterOperationProperty
mkFilterOperationProperty conditionExpression
  = FilterOperationProperty
      {conditionExpression = conditionExpression}
instance ToResourceProperties FilterOperationProperty where
  toResourceProperties FilterOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.FilterOperation",
         supportsTags = Prelude.False,
         properties = ["ConditionExpression" JSON..= conditionExpression]}
instance JSON.ToJSON FilterOperationProperty where
  toJSON FilterOperationProperty {..}
    = JSON.object ["ConditionExpression" JSON..= conditionExpression]
instance Property "ConditionExpression" FilterOperationProperty where
  type PropertyType "ConditionExpression" FilterOperationProperty = Value Prelude.Text
  set newValue FilterOperationProperty {}
    = FilterOperationProperty {conditionExpression = newValue, ..}