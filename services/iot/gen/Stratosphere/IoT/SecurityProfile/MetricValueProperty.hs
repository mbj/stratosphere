module Stratosphere.IoT.SecurityProfile.MetricValueProperty (
        MetricValueProperty(..), mkMetricValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html>
    MetricValueProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-cidrs>
                         cidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-count>
                         count :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-number>
                         number :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-numbers>
                         numbers :: (Prelude.Maybe (ValueList Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-ports>
                         ports :: (Prelude.Maybe (ValueList Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricvalue.html#cfn-iot-securityprofile-metricvalue-strings>
                         strings :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricValueProperty :: MetricValueProperty
mkMetricValueProperty
  = MetricValueProperty
      {haddock_workaround_ = (), cidrs = Prelude.Nothing,
       count = Prelude.Nothing, number = Prelude.Nothing,
       numbers = Prelude.Nothing, ports = Prelude.Nothing,
       strings = Prelude.Nothing}
instance ToResourceProperties MetricValueProperty where
  toResourceProperties MetricValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.MetricValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidrs" Prelude.<$> cidrs,
                            (JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Number" Prelude.<$> number,
                            (JSON..=) "Numbers" Prelude.<$> numbers,
                            (JSON..=) "Ports" Prelude.<$> ports,
                            (JSON..=) "Strings" Prelude.<$> strings])}
instance JSON.ToJSON MetricValueProperty where
  toJSON MetricValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidrs" Prelude.<$> cidrs,
               (JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Number" Prelude.<$> number,
               (JSON..=) "Numbers" Prelude.<$> numbers,
               (JSON..=) "Ports" Prelude.<$> ports,
               (JSON..=) "Strings" Prelude.<$> strings]))
instance Property "Cidrs" MetricValueProperty where
  type PropertyType "Cidrs" MetricValueProperty = ValueList Prelude.Text
  set newValue MetricValueProperty {..}
    = MetricValueProperty {cidrs = Prelude.pure newValue, ..}
instance Property "Count" MetricValueProperty where
  type PropertyType "Count" MetricValueProperty = Value Prelude.Text
  set newValue MetricValueProperty {..}
    = MetricValueProperty {count = Prelude.pure newValue, ..}
instance Property "Number" MetricValueProperty where
  type PropertyType "Number" MetricValueProperty = Value Prelude.Double
  set newValue MetricValueProperty {..}
    = MetricValueProperty {number = Prelude.pure newValue, ..}
instance Property "Numbers" MetricValueProperty where
  type PropertyType "Numbers" MetricValueProperty = ValueList Prelude.Double
  set newValue MetricValueProperty {..}
    = MetricValueProperty {numbers = Prelude.pure newValue, ..}
instance Property "Ports" MetricValueProperty where
  type PropertyType "Ports" MetricValueProperty = ValueList Prelude.Integer
  set newValue MetricValueProperty {..}
    = MetricValueProperty {ports = Prelude.pure newValue, ..}
instance Property "Strings" MetricValueProperty where
  type PropertyType "Strings" MetricValueProperty = ValueList Prelude.Text
  set newValue MetricValueProperty {..}
    = MetricValueProperty {strings = Prelude.pure newValue, ..}