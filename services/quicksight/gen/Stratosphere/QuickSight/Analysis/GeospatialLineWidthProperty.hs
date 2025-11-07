module Stratosphere.QuickSight.Analysis.GeospatialLineWidthProperty (
        GeospatialLineWidthProperty(..), mkGeospatialLineWidthProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialLineWidthProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinewidth.html>
    GeospatialLineWidthProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinewidth.html#cfn-quicksight-analysis-geospatiallinewidth-linewidth>
                                 lineWidth :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLineWidthProperty :: GeospatialLineWidthProperty
mkGeospatialLineWidthProperty
  = GeospatialLineWidthProperty
      {haddock_workaround_ = (), lineWidth = Prelude.Nothing}
instance ToResourceProperties GeospatialLineWidthProperty where
  toResourceProperties GeospatialLineWidthProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLineWidth",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "LineWidth" Prelude.<$> lineWidth])}
instance JSON.ToJSON GeospatialLineWidthProperty where
  toJSON GeospatialLineWidthProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "LineWidth" Prelude.<$> lineWidth]))
instance Property "LineWidth" GeospatialLineWidthProperty where
  type PropertyType "LineWidth" GeospatialLineWidthProperty = Value Prelude.Double
  set newValue GeospatialLineWidthProperty {..}
    = GeospatialLineWidthProperty
        {lineWidth = Prelude.pure newValue, ..}