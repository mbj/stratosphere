module Stratosphere.MediaPackageV2.OriginEndpoint.DashDvbMetricsReportingProperty (
        DashDvbMetricsReportingProperty(..),
        mkDashDvbMetricsReportingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashDvbMetricsReportingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbmetricsreporting.html>
    DashDvbMetricsReportingProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbmetricsreporting.html#cfn-mediapackagev2-originendpoint-dashdvbmetricsreporting-probability>
                                     probability :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbmetricsreporting.html#cfn-mediapackagev2-originendpoint-dashdvbmetricsreporting-reportingurl>
                                     reportingUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashDvbMetricsReportingProperty ::
  Value Prelude.Text -> DashDvbMetricsReportingProperty
mkDashDvbMetricsReportingProperty reportingUrl
  = DashDvbMetricsReportingProperty
      {haddock_workaround_ = (), reportingUrl = reportingUrl,
       probability = Prelude.Nothing}
instance ToResourceProperties DashDvbMetricsReportingProperty where
  toResourceProperties DashDvbMetricsReportingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashDvbMetricsReporting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReportingUrl" JSON..= reportingUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "Probability" Prelude.<$> probability]))}
instance JSON.ToJSON DashDvbMetricsReportingProperty where
  toJSON DashDvbMetricsReportingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReportingUrl" JSON..= reportingUrl]
              (Prelude.catMaybes
                 [(JSON..=) "Probability" Prelude.<$> probability])))
instance Property "Probability" DashDvbMetricsReportingProperty where
  type PropertyType "Probability" DashDvbMetricsReportingProperty = Value Prelude.Integer
  set newValue DashDvbMetricsReportingProperty {..}
    = DashDvbMetricsReportingProperty
        {probability = Prelude.pure newValue, ..}
instance Property "ReportingUrl" DashDvbMetricsReportingProperty where
  type PropertyType "ReportingUrl" DashDvbMetricsReportingProperty = Value Prelude.Text
  set newValue DashDvbMetricsReportingProperty {..}
    = DashDvbMetricsReportingProperty {reportingUrl = newValue, ..}