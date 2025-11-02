module Stratosphere.IoT.TopicRule.CloudwatchMetricActionProperty (
        CloudwatchMetricActionProperty(..),
        mkCloudwatchMetricActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchMetricActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html>
    CloudwatchMetricActionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricname>
                                    metricName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricnamespace>
                                    metricNamespace :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metrictimestamp>
                                    metricTimestamp :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricunit>
                                    metricUnit :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricvalue>
                                    metricValue :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-rolearn>
                                    roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudwatchMetricActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> CloudwatchMetricActionProperty
mkCloudwatchMetricActionProperty
  metricName
  metricNamespace
  metricUnit
  metricValue
  roleArn
  = CloudwatchMetricActionProperty
      {haddock_workaround_ = (), metricName = metricName,
       metricNamespace = metricNamespace, metricUnit = metricUnit,
       metricValue = metricValue, roleArn = roleArn,
       metricTimestamp = Prelude.Nothing}
instance ToResourceProperties CloudwatchMetricActionProperty where
  toResourceProperties CloudwatchMetricActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.CloudwatchMetricAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName,
                            "MetricNamespace" JSON..= metricNamespace,
                            "MetricUnit" JSON..= metricUnit, "MetricValue" JSON..= metricValue,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "MetricTimestamp" Prelude.<$> metricTimestamp]))}
instance JSON.ToJSON CloudwatchMetricActionProperty where
  toJSON CloudwatchMetricActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName,
               "MetricNamespace" JSON..= metricNamespace,
               "MetricUnit" JSON..= metricUnit, "MetricValue" JSON..= metricValue,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "MetricTimestamp" Prelude.<$> metricTimestamp])))
instance Property "MetricName" CloudwatchMetricActionProperty where
  type PropertyType "MetricName" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty {metricName = newValue, ..}
instance Property "MetricNamespace" CloudwatchMetricActionProperty where
  type PropertyType "MetricNamespace" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty {metricNamespace = newValue, ..}
instance Property "MetricTimestamp" CloudwatchMetricActionProperty where
  type PropertyType "MetricTimestamp" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty
        {metricTimestamp = Prelude.pure newValue, ..}
instance Property "MetricUnit" CloudwatchMetricActionProperty where
  type PropertyType "MetricUnit" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty {metricUnit = newValue, ..}
instance Property "MetricValue" CloudwatchMetricActionProperty where
  type PropertyType "MetricValue" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty {metricValue = newValue, ..}
instance Property "RoleArn" CloudwatchMetricActionProperty where
  type PropertyType "RoleArn" CloudwatchMetricActionProperty = Value Prelude.Text
  set newValue CloudwatchMetricActionProperty {..}
    = CloudwatchMetricActionProperty {roleArn = newValue, ..}