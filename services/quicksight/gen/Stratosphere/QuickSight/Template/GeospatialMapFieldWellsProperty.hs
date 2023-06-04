module Stratosphere.QuickSight.Template.GeospatialMapFieldWellsProperty (
        module Exports, GeospatialMapFieldWellsProperty(..),
        mkGeospatialMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialMapFieldWellsProperty
  = GeospatialMapFieldWellsProperty {geospatialMapAggregatedFieldWells :: (Prelude.Maybe GeospatialMapAggregatedFieldWellsProperty)}
mkGeospatialMapFieldWellsProperty ::
  GeospatialMapFieldWellsProperty
mkGeospatialMapFieldWellsProperty
  = GeospatialMapFieldWellsProperty
      {geospatialMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties GeospatialMapFieldWellsProperty where
  toResourceProperties GeospatialMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialMapFieldWells",
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
  set newValue GeospatialMapFieldWellsProperty {}
    = GeospatialMapFieldWellsProperty
        {geospatialMapAggregatedFieldWells = Prelude.pure newValue, ..}