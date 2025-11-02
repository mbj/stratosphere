module Stratosphere.S3.StorageLens.DetailedStatusCodesMetricsProperty (
        DetailedStatusCodesMetricsProperty(..),
        mkDetailedStatusCodesMetricsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DetailedStatusCodesMetricsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-detailedstatuscodesmetrics.html>
    DetailedStatusCodesMetricsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-detailedstatuscodesmetrics.html#cfn-s3-storagelens-detailedstatuscodesmetrics-isenabled>
                                        isEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDetailedStatusCodesMetricsProperty ::
  DetailedStatusCodesMetricsProperty
mkDetailedStatusCodesMetricsProperty
  = DetailedStatusCodesMetricsProperty
      {haddock_workaround_ = (), isEnabled = Prelude.Nothing}
instance ToResourceProperties DetailedStatusCodesMetricsProperty where
  toResourceProperties DetailedStatusCodesMetricsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.DetailedStatusCodesMetrics",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled])}
instance JSON.ToJSON DetailedStatusCodesMetricsProperty where
  toJSON DetailedStatusCodesMetricsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsEnabled" Prelude.<$> isEnabled]))
instance Property "IsEnabled" DetailedStatusCodesMetricsProperty where
  type PropertyType "IsEnabled" DetailedStatusCodesMetricsProperty = Value Prelude.Bool
  set newValue DetailedStatusCodesMetricsProperty {..}
    = DetailedStatusCodesMetricsProperty
        {isEnabled = Prelude.pure newValue, ..}