module Stratosphere.DataZone.DataSource.FilterExpressionProperty (
        FilterExpressionProperty(..), mkFilterExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterExpressionProperty
  = FilterExpressionProperty {expression :: (Value Prelude.Text),
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterExpressionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FilterExpressionProperty
mkFilterExpressionProperty expression type'
  = FilterExpressionProperty {expression = expression, type' = type'}
instance ToResourceProperties FilterExpressionProperty where
  toResourceProperties FilterExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.FilterExpression",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "Type" JSON..= type']}
instance JSON.ToJSON FilterExpressionProperty where
  toJSON FilterExpressionProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "Type" JSON..= type']
instance Property "Expression" FilterExpressionProperty where
  type PropertyType "Expression" FilterExpressionProperty = Value Prelude.Text
  set newValue FilterExpressionProperty {..}
    = FilterExpressionProperty {expression = newValue, ..}
instance Property "Type" FilterExpressionProperty where
  type PropertyType "Type" FilterExpressionProperty = Value Prelude.Text
  set newValue FilterExpressionProperty {..}
    = FilterExpressionProperty {type' = newValue, ..}