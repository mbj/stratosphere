module Stratosphere.Logs.MetricFilter.DimensionProperty (
        DimensionProperty(..), mkDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-dimension.html>
    DimensionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-dimension.html#cfn-logs-metricfilter-dimension-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-dimension.html#cfn-logs-metricfilter-dimension-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DimensionProperty
mkDimensionProperty key value
  = DimensionProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties DimensionProperty where
  toResourceProperties DimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::MetricFilter.Dimension",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON DimensionProperty where
  toJSON DimensionProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" DimensionProperty where
  type PropertyType "Key" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {..}
    = DimensionProperty {key = newValue, ..}
instance Property "Value" DimensionProperty where
  type PropertyType "Value" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {..}
    = DimensionProperty {value = newValue, ..}