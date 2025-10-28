module Stratosphere.IoTSiteWise.AssetModel.MetricProperty (
        module Exports, MetricProperty(..), mkMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.ExpressionVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.MetricWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metric.html>
    MetricProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metric.html#cfn-iotsitewise-assetmodel-metric-expression>
                    expression :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metric.html#cfn-iotsitewise-assetmodel-metric-variables>
                    variables :: [ExpressionVariableProperty],
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metric.html#cfn-iotsitewise-assetmodel-metric-window>
                    window :: MetricWindowProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricProperty ::
  Value Prelude.Text
  -> [ExpressionVariableProperty]
     -> MetricWindowProperty -> MetricProperty
mkMetricProperty expression variables window
  = MetricProperty
      {expression = expression, variables = variables, window = window}
instance ToResourceProperties MetricProperty where
  toResourceProperties MetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.Metric",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "Variables" JSON..= variables, "Window" JSON..= window]}
instance JSON.ToJSON MetricProperty where
  toJSON MetricProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "Variables" JSON..= variables,
         "Window" JSON..= window]
instance Property "Expression" MetricProperty where
  type PropertyType "Expression" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {expression = newValue, ..}
instance Property "Variables" MetricProperty where
  type PropertyType "Variables" MetricProperty = [ExpressionVariableProperty]
  set newValue MetricProperty {..}
    = MetricProperty {variables = newValue, ..}
instance Property "Window" MetricProperty where
  type PropertyType "Window" MetricProperty = MetricWindowProperty
  set newValue MetricProperty {..}
    = MetricProperty {window = newValue, ..}