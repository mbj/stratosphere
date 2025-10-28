module Stratosphere.IoT.CustomMetric (
        CustomMetric(..), mkCustomMetric
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomMetric
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-custommetric.html>
    CustomMetric {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-custommetric.html#cfn-iot-custommetric-displayname>
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-custommetric.html#cfn-iot-custommetric-metricname>
                  metricName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-custommetric.html#cfn-iot-custommetric-metrictype>
                  metricType :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-custommetric.html#cfn-iot-custommetric-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomMetric :: Value Prelude.Text -> CustomMetric
mkCustomMetric metricType
  = CustomMetric
      {haddock_workaround_ = (), metricType = metricType,
       displayName = Prelude.Nothing, metricName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomMetric where
  toResourceProperties CustomMetric {..}
    = ResourceProperties
        {awsType = "AWS::IoT::CustomMetric", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricType" JSON..= metricType]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "MetricName" Prelude.<$> metricName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomMetric where
  toJSON CustomMetric {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricType" JSON..= metricType]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "MetricName" Prelude.<$> metricName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DisplayName" CustomMetric where
  type PropertyType "DisplayName" CustomMetric = Value Prelude.Text
  set newValue CustomMetric {..}
    = CustomMetric {displayName = Prelude.pure newValue, ..}
instance Property "MetricName" CustomMetric where
  type PropertyType "MetricName" CustomMetric = Value Prelude.Text
  set newValue CustomMetric {..}
    = CustomMetric {metricName = Prelude.pure newValue, ..}
instance Property "MetricType" CustomMetric where
  type PropertyType "MetricType" CustomMetric = Value Prelude.Text
  set newValue CustomMetric {..}
    = CustomMetric {metricType = newValue, ..}
instance Property "Tags" CustomMetric where
  type PropertyType "Tags" CustomMetric = [Tag]
  set newValue CustomMetric {..}
    = CustomMetric {tags = Prelude.pure newValue, ..}