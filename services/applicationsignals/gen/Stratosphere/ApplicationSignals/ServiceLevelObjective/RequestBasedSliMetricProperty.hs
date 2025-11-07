module Stratosphere.ApplicationSignals.ServiceLevelObjective.RequestBasedSliMetricProperty (
        module Exports, RequestBasedSliMetricProperty(..),
        mkRequestBasedSliMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.DependencyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.MetricDataQueryProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.MonitoredRequestCountMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestBasedSliMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html>
    RequestBasedSliMetricProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-dependencyconfig>
                                   dependencyConfig :: (Prelude.Maybe DependencyConfigProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-keyattributes>
                                   keyAttributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-metrictype>
                                   metricType :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-monitoredrequestcountmetric>
                                   monitoredRequestCountMetric :: (Prelude.Maybe MonitoredRequestCountMetricProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-operationname>
                                   operationName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-totalrequestcountmetric>
                                   totalRequestCountMetric :: (Prelude.Maybe [MetricDataQueryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestBasedSliMetricProperty :: RequestBasedSliMetricProperty
mkRequestBasedSliMetricProperty
  = RequestBasedSliMetricProperty
      {haddock_workaround_ = (), dependencyConfig = Prelude.Nothing,
       keyAttributes = Prelude.Nothing, metricType = Prelude.Nothing,
       monitoredRequestCountMetric = Prelude.Nothing,
       operationName = Prelude.Nothing,
       totalRequestCountMetric = Prelude.Nothing}
instance ToResourceProperties RequestBasedSliMetricProperty where
  toResourceProperties RequestBasedSliMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.RequestBasedSliMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DependencyConfig" Prelude.<$> dependencyConfig,
                            (JSON..=) "KeyAttributes" Prelude.<$> keyAttributes,
                            (JSON..=) "MetricType" Prelude.<$> metricType,
                            (JSON..=) "MonitoredRequestCountMetric"
                              Prelude.<$> monitoredRequestCountMetric,
                            (JSON..=) "OperationName" Prelude.<$> operationName,
                            (JSON..=) "TotalRequestCountMetric"
                              Prelude.<$> totalRequestCountMetric])}
instance JSON.ToJSON RequestBasedSliMetricProperty where
  toJSON RequestBasedSliMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DependencyConfig" Prelude.<$> dependencyConfig,
               (JSON..=) "KeyAttributes" Prelude.<$> keyAttributes,
               (JSON..=) "MetricType" Prelude.<$> metricType,
               (JSON..=) "MonitoredRequestCountMetric"
                 Prelude.<$> monitoredRequestCountMetric,
               (JSON..=) "OperationName" Prelude.<$> operationName,
               (JSON..=) "TotalRequestCountMetric"
                 Prelude.<$> totalRequestCountMetric]))
instance Property "DependencyConfig" RequestBasedSliMetricProperty where
  type PropertyType "DependencyConfig" RequestBasedSliMetricProperty = DependencyConfigProperty
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {dependencyConfig = Prelude.pure newValue, ..}
instance Property "KeyAttributes" RequestBasedSliMetricProperty where
  type PropertyType "KeyAttributes" RequestBasedSliMetricProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {keyAttributes = Prelude.pure newValue, ..}
instance Property "MetricType" RequestBasedSliMetricProperty where
  type PropertyType "MetricType" RequestBasedSliMetricProperty = Value Prelude.Text
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {metricType = Prelude.pure newValue, ..}
instance Property "MonitoredRequestCountMetric" RequestBasedSliMetricProperty where
  type PropertyType "MonitoredRequestCountMetric" RequestBasedSliMetricProperty = MonitoredRequestCountMetricProperty
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {monitoredRequestCountMetric = Prelude.pure newValue, ..}
instance Property "OperationName" RequestBasedSliMetricProperty where
  type PropertyType "OperationName" RequestBasedSliMetricProperty = Value Prelude.Text
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {operationName = Prelude.pure newValue, ..}
instance Property "TotalRequestCountMetric" RequestBasedSliMetricProperty where
  type PropertyType "TotalRequestCountMetric" RequestBasedSliMetricProperty = [MetricDataQueryProperty]
  set newValue RequestBasedSliMetricProperty {..}
    = RequestBasedSliMetricProperty
        {totalRequestCountMetric = Prelude.pure newValue, ..}