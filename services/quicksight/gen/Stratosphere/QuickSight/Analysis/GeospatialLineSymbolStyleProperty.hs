module Stratosphere.QuickSight.Analysis.GeospatialLineSymbolStyleProperty (
        module Exports, GeospatialLineSymbolStyleProperty(..),
        mkGeospatialLineSymbolStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLineWidthProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLineSymbolStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html>
    GeospatialLineSymbolStyleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html#cfn-quicksight-analysis-geospatiallinesymbolstyle-fillcolor>
                                       fillColor :: (Prelude.Maybe GeospatialColorProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinesymbolstyle.html#cfn-quicksight-analysis-geospatiallinesymbolstyle-linewidth>
                                       lineWidth :: (Prelude.Maybe GeospatialLineWidthProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLineSymbolStyleProperty ::
  GeospatialLineSymbolStyleProperty
mkGeospatialLineSymbolStyleProperty
  = GeospatialLineSymbolStyleProperty
      {haddock_workaround_ = (), fillColor = Prelude.Nothing,
       lineWidth = Prelude.Nothing}
instance ToResourceProperties GeospatialLineSymbolStyleProperty where
  toResourceProperties GeospatialLineSymbolStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLineSymbolStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FillColor" Prelude.<$> fillColor,
                            (JSON..=) "LineWidth" Prelude.<$> lineWidth])}
instance JSON.ToJSON GeospatialLineSymbolStyleProperty where
  toJSON GeospatialLineSymbolStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FillColor" Prelude.<$> fillColor,
               (JSON..=) "LineWidth" Prelude.<$> lineWidth]))
instance Property "FillColor" GeospatialLineSymbolStyleProperty where
  type PropertyType "FillColor" GeospatialLineSymbolStyleProperty = GeospatialColorProperty
  set newValue GeospatialLineSymbolStyleProperty {..}
    = GeospatialLineSymbolStyleProperty
        {fillColor = Prelude.pure newValue, ..}
instance Property "LineWidth" GeospatialLineSymbolStyleProperty where
  type PropertyType "LineWidth" GeospatialLineSymbolStyleProperty = GeospatialLineWidthProperty
  set newValue GeospatialLineSymbolStyleProperty {..}
    = GeospatialLineSymbolStyleProperty
        {lineWidth = Prelude.pure newValue, ..}