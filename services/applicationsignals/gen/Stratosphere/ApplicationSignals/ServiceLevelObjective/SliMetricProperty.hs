module Stratosphere.ApplicationSignals.ServiceLevelObjective.SliMetricProperty (
        module Exports, SliMetricProperty(..), mkSliMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SliMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html>
    SliMetricProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-keyattributes>
                       keyAttributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-metricdataqueries>
                       metricDataQueries :: (Prelude.Maybe [MetricDataQueryProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-metrictype>
                       metricType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-operationname>
                       operationName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-periodseconds>
                       periodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-slimetric.html#cfn-applicationsignals-servicelevelobjective-slimetric-statistic>
                       statistic :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSliMetricProperty :: SliMetricProperty
mkSliMetricProperty
  = SliMetricProperty
      {haddock_workaround_ = (), keyAttributes = Prelude.Nothing,
       metricDataQueries = Prelude.Nothing, metricType = Prelude.Nothing,
       operationName = Prelude.Nothing, periodSeconds = Prelude.Nothing,
       statistic = Prelude.Nothing}
instance ToResourceProperties SliMetricProperty where
  toResourceProperties SliMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.SliMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KeyAttributes" Prelude.<$> keyAttributes,
                            (JSON..=) "MetricDataQueries" Prelude.<$> metricDataQueries,
                            (JSON..=) "MetricType" Prelude.<$> metricType,
                            (JSON..=) "OperationName" Prelude.<$> operationName,
                            (JSON..=) "PeriodSeconds" Prelude.<$> periodSeconds,
                            (JSON..=) "Statistic" Prelude.<$> statistic])}
instance JSON.ToJSON SliMetricProperty where
  toJSON SliMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KeyAttributes" Prelude.<$> keyAttributes,
               (JSON..=) "MetricDataQueries" Prelude.<$> metricDataQueries,
               (JSON..=) "MetricType" Prelude.<$> metricType,
               (JSON..=) "OperationName" Prelude.<$> operationName,
               (JSON..=) "PeriodSeconds" Prelude.<$> periodSeconds,
               (JSON..=) "Statistic" Prelude.<$> statistic]))
instance Property "KeyAttributes" SliMetricProperty where
  type PropertyType "KeyAttributes" SliMetricProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SliMetricProperty {..}
    = SliMetricProperty {keyAttributes = Prelude.pure newValue, ..}
instance Property "MetricDataQueries" SliMetricProperty where
  type PropertyType "MetricDataQueries" SliMetricProperty = [MetricDataQueryProperty]
  set newValue SliMetricProperty {..}
    = SliMetricProperty {metricDataQueries = Prelude.pure newValue, ..}
instance Property "MetricType" SliMetricProperty where
  type PropertyType "MetricType" SliMetricProperty = Value Prelude.Text
  set newValue SliMetricProperty {..}
    = SliMetricProperty {metricType = Prelude.pure newValue, ..}
instance Property "OperationName" SliMetricProperty where
  type PropertyType "OperationName" SliMetricProperty = Value Prelude.Text
  set newValue SliMetricProperty {..}
    = SliMetricProperty {operationName = Prelude.pure newValue, ..}
instance Property "PeriodSeconds" SliMetricProperty where
  type PropertyType "PeriodSeconds" SliMetricProperty = Value Prelude.Integer
  set newValue SliMetricProperty {..}
    = SliMetricProperty {periodSeconds = Prelude.pure newValue, ..}
instance Property "Statistic" SliMetricProperty where
  type PropertyType "Statistic" SliMetricProperty = Value Prelude.Text
  set newValue SliMetricProperty {..}
    = SliMetricProperty {statistic = Prelude.pure newValue, ..}