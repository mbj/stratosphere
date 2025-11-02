module Stratosphere.DataBrew.Dataset.FilterExpressionProperty (
        module Exports, FilterExpressionProperty(..),
        mkFilterExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.FilterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-filterexpression.html>
    FilterExpressionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-filterexpression.html#cfn-databrew-dataset-filterexpression-expression>
                              expression :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-filterexpression.html#cfn-databrew-dataset-filterexpression-valuesmap>
                              valuesMap :: [FilterValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterExpressionProperty ::
  Value Prelude.Text
  -> [FilterValueProperty] -> FilterExpressionProperty
mkFilterExpressionProperty expression valuesMap
  = FilterExpressionProperty
      {haddock_workaround_ = (), expression = expression,
       valuesMap = valuesMap}
instance ToResourceProperties FilterExpressionProperty where
  toResourceProperties FilterExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.FilterExpression",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "ValuesMap" JSON..= valuesMap]}
instance JSON.ToJSON FilterExpressionProperty where
  toJSON FilterExpressionProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "ValuesMap" JSON..= valuesMap]
instance Property "Expression" FilterExpressionProperty where
  type PropertyType "Expression" FilterExpressionProperty = Value Prelude.Text
  set newValue FilterExpressionProperty {..}
    = FilterExpressionProperty {expression = newValue, ..}
instance Property "ValuesMap" FilterExpressionProperty where
  type PropertyType "ValuesMap" FilterExpressionProperty = [FilterValueProperty]
  set newValue FilterExpressionProperty {..}
    = FilterExpressionProperty {valuesMap = newValue, ..}