module Stratosphere.QuickSight.Template.GeospatialWindowOptionsProperty (
        module Exports, GeospatialWindowOptionsProperty(..),
        mkGeospatialWindowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialCoordinateBoundsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialWindowOptionsProperty
  = GeospatialWindowOptionsProperty {bounds :: (Prelude.Maybe GeospatialCoordinateBoundsProperty),
                                     mapZoomMode :: (Prelude.Maybe (Value Prelude.Text))}
mkGeospatialWindowOptionsProperty ::
  GeospatialWindowOptionsProperty
mkGeospatialWindowOptionsProperty
  = GeospatialWindowOptionsProperty
      {bounds = Prelude.Nothing, mapZoomMode = Prelude.Nothing}
instance ToResourceProperties GeospatialWindowOptionsProperty where
  toResourceProperties GeospatialWindowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialWindowOptions",
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