module Stratosphere.QuickSight.Analysis.GeospatialLineStyleProperty (
        module Exports, GeospatialLineStyleProperty(..),
        mkGeospatialLineStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialLineSymbolStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLineStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinestyle.html>
    GeospatialLineStyleProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallinestyle.html#cfn-quicksight-analysis-geospatiallinestyle-linesymbolstyle>
                                 lineSymbolStyle :: (Prelude.Maybe GeospatialLineSymbolStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLineStyleProperty :: GeospatialLineStyleProperty
mkGeospatialLineStyleProperty
  = GeospatialLineStyleProperty
      {haddock_workaround_ = (), lineSymbolStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialLineStyleProperty where
  toResourceProperties GeospatialLineStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialLineStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineSymbolStyle" Prelude.<$> lineSymbolStyle])}
instance JSON.ToJSON GeospatialLineStyleProperty where
  toJSON GeospatialLineStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineSymbolStyle" Prelude.<$> lineSymbolStyle]))
instance Property "LineSymbolStyle" GeospatialLineStyleProperty where
  type PropertyType "LineSymbolStyle" GeospatialLineStyleProperty = GeospatialLineSymbolStyleProperty
  set newValue GeospatialLineStyleProperty {..}
    = GeospatialLineStyleProperty
        {lineSymbolStyle = Prelude.pure newValue, ..}