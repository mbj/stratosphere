module Stratosphere.QuickSight.Analysis.GeospatialWindowOptionsProperty (
        module Exports, GeospatialWindowOptionsProperty(..),
        mkGeospatialWindowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialCoordinateBoundsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialWindowOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialwindowoptions.html>
    GeospatialWindowOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialwindowoptions.html#cfn-quicksight-analysis-geospatialwindowoptions-bounds>
                                     bounds :: (Prelude.Maybe GeospatialCoordinateBoundsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialwindowoptions.html#cfn-quicksight-analysis-geospatialwindowoptions-mapzoommode>
                                     mapZoomMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialWindowOptionsProperty ::
  GeospatialWindowOptionsProperty
mkGeospatialWindowOptionsProperty
  = GeospatialWindowOptionsProperty
      {haddock_workaround_ = (), bounds = Prelude.Nothing,
       mapZoomMode = Prelude.Nothing}
instance ToResourceProperties GeospatialWindowOptionsProperty where
  toResourceProperties GeospatialWindowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialWindowOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bounds" Prelude.<$> bounds,
                            (JSON..=) "MapZoomMode" Prelude.<$> mapZoomMode])}
instance JSON.ToJSON GeospatialWindowOptionsProperty where
  toJSON GeospatialWindowOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bounds" Prelude.<$> bounds,
               (JSON..=) "MapZoomMode" Prelude.<$> mapZoomMode]))
instance Property "Bounds" GeospatialWindowOptionsProperty where
  type PropertyType "Bounds" GeospatialWindowOptionsProperty = GeospatialCoordinateBoundsProperty
  set newValue GeospatialWindowOptionsProperty {..}
    = GeospatialWindowOptionsProperty
        {bounds = Prelude.pure newValue, ..}
instance Property "MapZoomMode" GeospatialWindowOptionsProperty where
  type PropertyType "MapZoomMode" GeospatialWindowOptionsProperty = Value Prelude.Text
  set newValue GeospatialWindowOptionsProperty {..}
    = GeospatialWindowOptionsProperty
        {mapZoomMode = Prelude.pure newValue, ..}