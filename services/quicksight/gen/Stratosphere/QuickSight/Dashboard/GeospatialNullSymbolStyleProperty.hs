module Stratosphere.QuickSight.Dashboard.GeospatialNullSymbolStyleProperty (
        GeospatialNullSymbolStyleProperty(..),
        mkGeospatialNullSymbolStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialNullSymbolStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialnullsymbolstyle.html>
    GeospatialNullSymbolStyleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialnullsymbolstyle.html#cfn-quicksight-dashboard-geospatialnullsymbolstyle-fillcolor>
                                       fillColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialnullsymbolstyle.html#cfn-quicksight-dashboard-geospatialnullsymbolstyle-strokecolor>
                                       strokeColor :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialnullsymbolstyle.html#cfn-quicksight-dashboard-geospatialnullsymbolstyle-strokewidth>
                                       strokeWidth :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialNullSymbolStyleProperty ::
  GeospatialNullSymbolStyleProperty
mkGeospatialNullSymbolStyleProperty
  = GeospatialNullSymbolStyleProperty
      {haddock_workaround_ = (), fillColor = Prelude.Nothing,
       strokeColor = Prelude.Nothing, strokeWidth = Prelude.Nothing}
instance ToResourceProperties GeospatialNullSymbolStyleProperty where
  toResourceProperties GeospatialNullSymbolStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialNullSymbolStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FillColor" Prelude.<$> fillColor,
                            (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
                            (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth])}
instance JSON.ToJSON GeospatialNullSymbolStyleProperty where
  toJSON GeospatialNullSymbolStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FillColor" Prelude.<$> fillColor,
               (JSON..=) "StrokeColor" Prelude.<$> strokeColor,
               (JSON..=) "StrokeWidth" Prelude.<$> strokeWidth]))
instance Property "FillColor" GeospatialNullSymbolStyleProperty where
  type PropertyType "FillColor" GeospatialNullSymbolStyleProperty = Value Prelude.Text
  set newValue GeospatialNullSymbolStyleProperty {..}
    = GeospatialNullSymbolStyleProperty
        {fillColor = Prelude.pure newValue, ..}
instance Property "StrokeColor" GeospatialNullSymbolStyleProperty where
  type PropertyType "StrokeColor" GeospatialNullSymbolStyleProperty = Value Prelude.Text
  set newValue GeospatialNullSymbolStyleProperty {..}
    = GeospatialNullSymbolStyleProperty
        {strokeColor = Prelude.pure newValue, ..}
instance Property "StrokeWidth" GeospatialNullSymbolStyleProperty where
  type PropertyType "StrokeWidth" GeospatialNullSymbolStyleProperty = Value Prelude.Double
  set newValue GeospatialNullSymbolStyleProperty {..}
    = GeospatialNullSymbolStyleProperty
        {strokeWidth = Prelude.pure newValue, ..}