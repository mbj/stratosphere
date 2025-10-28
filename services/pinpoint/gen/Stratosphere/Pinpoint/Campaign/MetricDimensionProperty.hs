module Stratosphere.Pinpoint.Campaign.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html>
    MetricDimensionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-comparisonoperator>
                             comparisonOperator :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-value>
                             value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDimensionProperty :: MetricDimensionProperty
mkMetricDimensionProperty
  = MetricDimensionProperty
      {haddock_workaround_ = (), comparisonOperator = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.MetricDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComparisonOperator" Prelude.<$> comparisonOperator,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "ComparisonOperator" MetricDimensionProperty where
  type PropertyType "ComparisonOperator" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty
        {comparisonOperator = Prelude.pure newValue, ..}
instance Property "Value" MetricDimensionProperty where
  type PropertyType "Value" MetricDimensionProperty = Value Prelude.Double
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {value = Prelude.pure newValue, ..}