module Stratosphere.EMR.InstanceGroupConfig.MetricDimensionProperty (
        MetricDimensionProperty(..), mkMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html>
    MetricDimensionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-key>
                             key :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDimensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricDimensionProperty
mkMetricDimensionProperty key value
  = MetricDimensionProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties MetricDimensionProperty where
  toResourceProperties MetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.MetricDimension",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON MetricDimensionProperty where
  toJSON MetricDimensionProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" MetricDimensionProperty where
  type PropertyType "Key" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {key = newValue, ..}
instance Property "Value" MetricDimensionProperty where
  type PropertyType "Value" MetricDimensionProperty = Value Prelude.Text
  set newValue MetricDimensionProperty {..}
    = MetricDimensionProperty {value = newValue, ..}