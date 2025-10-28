module Stratosphere.SageMaker.ModelCard.MetricGroupProperty (
        module Exports, MetricGroupProperty(..), mkMetricGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.MetricDataItemsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-metricgroup.html>
    MetricGroupProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-metricgroup.html#cfn-sagemaker-modelcard-metricgroup-metricdata>
                         metricData :: [MetricDataItemsProperty],
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-metricgroup.html#cfn-sagemaker-modelcard-metricgroup-name>
                         name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricGroupProperty ::
  [MetricDataItemsProperty]
  -> Value Prelude.Text -> MetricGroupProperty
mkMetricGroupProperty metricData name
  = MetricGroupProperty
      {haddock_workaround_ = (), metricData = metricData, name = name}
instance ToResourceProperties MetricGroupProperty where
  toResourceProperties MetricGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.MetricGroup",
         supportsTags = Prelude.False,
         properties = ["MetricData" JSON..= metricData,
                       "Name" JSON..= name]}
instance JSON.ToJSON MetricGroupProperty where
  toJSON MetricGroupProperty {..}
    = JSON.object
        ["MetricData" JSON..= metricData, "Name" JSON..= name]
instance Property "MetricData" MetricGroupProperty where
  type PropertyType "MetricData" MetricGroupProperty = [MetricDataItemsProperty]
  set newValue MetricGroupProperty {..}
    = MetricGroupProperty {metricData = newValue, ..}
instance Property "Name" MetricGroupProperty where
  type PropertyType "Name" MetricGroupProperty = Value Prelude.Text
  set newValue MetricGroupProperty {..}
    = MetricGroupProperty {name = newValue, ..}