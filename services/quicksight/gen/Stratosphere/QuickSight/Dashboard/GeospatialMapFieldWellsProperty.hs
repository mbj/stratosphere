module Stratosphere.QuickSight.Dashboard.GeospatialMapFieldWellsProperty (
        module Exports, GeospatialMapFieldWellsProperty(..),
        mkGeospatialMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialMapFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapfieldwells.html>
    GeospatialMapFieldWellsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapfieldwells.html#cfn-quicksight-dashboard-geospatialmapfieldwells-geospatialmapaggregatedfieldwells>
                                     geospatialMapAggregatedFieldWells :: (Prelude.Maybe GeospatialMapAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapFieldWellsProperty ::
  GeospatialMapFieldWellsProperty
mkGeospatialMapFieldWellsProperty
  = GeospatialMapFieldWellsProperty
      {haddock_workaround_ = (),
       geospatialMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties GeospatialMapFieldWellsProperty where
  toResourceProperties GeospatialMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialMapFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GeospatialMapAggregatedFieldWells"
                              Prelude.<$> geospatialMapAggregatedFieldWells])}
instance JSON.ToJSON GeospatialMapFieldWellsProperty where
  toJSON GeospatialMapFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GeospatialMapAggregatedFieldWells"
                 Prelude.<$> geospatialMapAggregatedFieldWells]))
instance Property "GeospatialMapAggregatedFieldWells" GeospatialMapFieldWellsProperty where
  type PropertyType "GeospatialMapAggregatedFieldWells" GeospatialMapFieldWellsProperty = GeospatialMapAggregatedFieldWellsProperty
  set newValue GeospatialMapFieldWellsProperty {..}
    = GeospatialMapFieldWellsProperty
        {geospatialMapAggregatedFieldWells = Prelude.pure newValue, ..}