module Stratosphere.ApplicationSignals.ServiceLevelObjective.SliProperty (
        module Exports, SliProperty(..), mkSliProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.SliMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SliProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-sli.html>
    SliProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-sli.html#cfn-applicationsignals-servicelevelobjective-sli-comparisonoperator>
                 comparisonOperator :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-sli.html#cfn-applicationsignals-servicelevelobjective-sli-metricthreshold>
                 metricThreshold :: (Value Prelude.Double),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-sli.html#cfn-applicationsignals-servicelevelobjective-sli-slimetric>
                 sliMetric :: SliMetricProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSliProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> SliMetricProperty -> SliProperty
mkSliProperty comparisonOperator metricThreshold sliMetric
  = SliProperty
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       metricThreshold = metricThreshold, sliMetric = sliMetric}
instance ToResourceProperties SliProperty where
  toResourceProperties SliProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.Sli",
         supportsTags = Prelude.False,
         properties = ["ComparisonOperator" JSON..= comparisonOperator,
                       "MetricThreshold" JSON..= metricThreshold,
                       "SliMetric" JSON..= sliMetric]}
instance JSON.ToJSON SliProperty where
  toJSON SliProperty {..}
    = JSON.object
        ["ComparisonOperator" JSON..= comparisonOperator,
         "MetricThreshold" JSON..= metricThreshold,
         "SliMetric" JSON..= sliMetric]
instance Property "ComparisonOperator" SliProperty where
  type PropertyType "ComparisonOperator" SliProperty = Value Prelude.Text
  set newValue SliProperty {..}
    = SliProperty {comparisonOperator = newValue, ..}
instance Property "MetricThreshold" SliProperty where
  type PropertyType "MetricThreshold" SliProperty = Value Prelude.Double
  set newValue SliProperty {..}
    = SliProperty {metricThreshold = newValue, ..}
instance Property "SliMetric" SliProperty where
  type PropertyType "SliMetric" SliProperty = SliMetricProperty
  set newValue SliProperty {..}
    = SliProperty {sliMetric = newValue, ..}