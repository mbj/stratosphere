module Stratosphere.RUM.AppMonitor.MetricDefinitionProperty (
        MetricDefinitionProperty(..), mkMetricDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html>
    MetricDefinitionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-dimensionkeys>
                              dimensionKeys :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-eventpattern>
                              eventPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-namespace>
                              namespace :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-unitlabel>
                              unitLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdefinition.html#cfn-rum-appmonitor-metricdefinition-valuekey>
                              valueKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDefinitionProperty ::
  Value Prelude.Text -> MetricDefinitionProperty
mkMetricDefinitionProperty name
  = MetricDefinitionProperty
      {haddock_workaround_ = (), name = name,
       dimensionKeys = Prelude.Nothing, eventPattern = Prelude.Nothing,
       namespace = Prelude.Nothing, unitLabel = Prelude.Nothing,
       valueKey = Prelude.Nothing}
instance ToResourceProperties MetricDefinitionProperty where
  toResourceProperties MetricDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.MetricDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DimensionKeys" Prelude.<$> dimensionKeys,
                               (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "UnitLabel" Prelude.<$> unitLabel,
                               (JSON..=) "ValueKey" Prelude.<$> valueKey]))}
instance JSON.ToJSON MetricDefinitionProperty where
  toJSON MetricDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DimensionKeys" Prelude.<$> dimensionKeys,
                  (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "UnitLabel" Prelude.<$> unitLabel,
                  (JSON..=) "ValueKey" Prelude.<$> valueKey])))
instance Property "DimensionKeys" MetricDefinitionProperty where
  type PropertyType "DimensionKeys" MetricDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty
        {dimensionKeys = Prelude.pure newValue, ..}
instance Property "EventPattern" MetricDefinitionProperty where
  type PropertyType "EventPattern" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty
        {eventPattern = Prelude.pure newValue, ..}
instance Property "Name" MetricDefinitionProperty where
  type PropertyType "Name" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {name = newValue, ..}
instance Property "Namespace" MetricDefinitionProperty where
  type PropertyType "Namespace" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {namespace = Prelude.pure newValue, ..}
instance Property "UnitLabel" MetricDefinitionProperty where
  type PropertyType "UnitLabel" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {unitLabel = Prelude.pure newValue, ..}
instance Property "ValueKey" MetricDefinitionProperty where
  type PropertyType "ValueKey" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {valueKey = Prelude.pure newValue, ..}