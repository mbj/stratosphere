module Stratosphere.IoTSiteWise.AssetModel.MetricWindowProperty (
        module Exports, MetricWindowProperty(..), mkMetricWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.TumblingWindowProperty as Exports
import Stratosphere.ResourceProperties
data MetricWindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metricwindow.html>
    MetricWindowProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-metricwindow.html#cfn-iotsitewise-assetmodel-metricwindow-tumbling>
                          tumbling :: (Prelude.Maybe TumblingWindowProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricWindowProperty :: MetricWindowProperty
mkMetricWindowProperty
  = MetricWindowProperty
      {haddock_workaround_ = (), tumbling = Prelude.Nothing}
instance ToResourceProperties MetricWindowProperty where
  toResourceProperties MetricWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.MetricWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tumbling" Prelude.<$> tumbling])}
instance JSON.ToJSON MetricWindowProperty where
  toJSON MetricWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tumbling" Prelude.<$> tumbling]))
instance Property "Tumbling" MetricWindowProperty where
  type PropertyType "Tumbling" MetricWindowProperty = TumblingWindowProperty
  set newValue MetricWindowProperty {..}
    = MetricWindowProperty {tumbling = Prelude.pure newValue, ..}