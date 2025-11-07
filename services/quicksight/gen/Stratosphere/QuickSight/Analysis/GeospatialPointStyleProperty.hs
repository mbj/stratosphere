module Stratosphere.QuickSight.Analysis.GeospatialPointStyleProperty (
        module Exports, GeospatialPointStyleProperty(..),
        mkGeospatialPointStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialCircleSymbolStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPointStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyle.html>
    GeospatialPointStyleProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyle.html#cfn-quicksight-analysis-geospatialpointstyle-circlesymbolstyle>
                                  circleSymbolStyle :: (Prelude.Maybe GeospatialCircleSymbolStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPointStyleProperty :: GeospatialPointStyleProperty
mkGeospatialPointStyleProperty
  = GeospatialPointStyleProperty
      {haddock_workaround_ = (), circleSymbolStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialPointStyleProperty where
  toResourceProperties GeospatialPointStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialPointStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CircleSymbolStyle" Prelude.<$> circleSymbolStyle])}
instance JSON.ToJSON GeospatialPointStyleProperty where
  toJSON GeospatialPointStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CircleSymbolStyle" Prelude.<$> circleSymbolStyle]))
instance Property "CircleSymbolStyle" GeospatialPointStyleProperty where
  type PropertyType "CircleSymbolStyle" GeospatialPointStyleProperty = GeospatialCircleSymbolStyleProperty
  set newValue GeospatialPointStyleProperty {..}
    = GeospatialPointStyleProperty
        {circleSymbolStyle = Prelude.pure newValue, ..}