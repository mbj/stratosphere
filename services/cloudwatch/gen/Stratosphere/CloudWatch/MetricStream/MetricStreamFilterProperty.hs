module Stratosphere.CloudWatch.MetricStream.MetricStreamFilterProperty (
        MetricStreamFilterProperty(..), mkMetricStreamFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStreamFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamfilter.html>
    MetricStreamFilterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamfilter.html#cfn-cloudwatch-metricstream-metricstreamfilter-metricnames>
                                metricNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamfilter.html#cfn-cloudwatch-metricstream-metricstreamfilter-namespace>
                                namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricStreamFilterProperty ::
  Value Prelude.Text -> MetricStreamFilterProperty
mkMetricStreamFilterProperty namespace
  = MetricStreamFilterProperty
      {haddock_workaround_ = (), namespace = namespace,
       metricNames = Prelude.Nothing}
instance ToResourceProperties MetricStreamFilterProperty where
  toResourceProperties MetricStreamFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream.MetricStreamFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace]
                           (Prelude.catMaybes
                              [(JSON..=) "MetricNames" Prelude.<$> metricNames]))}
instance JSON.ToJSON MetricStreamFilterProperty where
  toJSON MetricStreamFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace]
              (Prelude.catMaybes
                 [(JSON..=) "MetricNames" Prelude.<$> metricNames])))
instance Property "MetricNames" MetricStreamFilterProperty where
  type PropertyType "MetricNames" MetricStreamFilterProperty = ValueList Prelude.Text
  set newValue MetricStreamFilterProperty {..}
    = MetricStreamFilterProperty
        {metricNames = Prelude.pure newValue, ..}
instance Property "Namespace" MetricStreamFilterProperty where
  type PropertyType "Namespace" MetricStreamFilterProperty = Value Prelude.Text
  set newValue MetricStreamFilterProperty {..}
    = MetricStreamFilterProperty {namespace = newValue, ..}