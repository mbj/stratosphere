module Stratosphere.QuickSight.Dashboard.GridLayoutCanvasSizeOptionsProperty (
        module Exports, GridLayoutCanvasSizeOptionsProperty(..),
        mkGridLayoutCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GridLayoutScreenCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data GridLayoutCanvasSizeOptionsProperty
  = GridLayoutCanvasSizeOptionsProperty {screenCanvasSizeOptions :: (Prelude.Maybe GridLayoutScreenCanvasSizeOptionsProperty)}
mkGridLayoutCanvasSizeOptionsProperty ::
  GridLayoutCanvasSizeOptionsProperty
mkGridLayoutCanvasSizeOptionsProperty
  = GridLayoutCanvasSizeOptionsProperty
      {screenCanvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties GridLayoutCanvasSizeOptionsProperty where
  toResourceProperties GridLayoutCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GridLayoutCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScreenCanvasSizeOptions"
                              Prelude.<$> screenCanvasSizeOptions])}
instance JSON.ToJSON GridLayoutCanvasSizeOptionsProperty where
  toJSON GridLayoutCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScreenCanvasSizeOptions"
                 Prelude.<$> screenCanvasSizeOptions]))
instance Property "ScreenCanvasSizeOptions" GridLayoutCanvasSizeOptionsProperty where
  type PropertyType "ScreenCanvasSizeOptions" GridLayoutCanvasSizeOptionsProperty = GridLayoutScreenCanvasSizeOptionsProperty
  set newValue GridLayoutCanvasSizeOptionsProperty {}
    = GridLayoutCanvasSizeOptionsProperty
        {screenCanvasSizeOptions = Prelude.pure newValue, ..}