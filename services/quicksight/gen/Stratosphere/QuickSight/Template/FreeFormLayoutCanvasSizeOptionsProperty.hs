module Stratosphere.QuickSight.Template.FreeFormLayoutCanvasSizeOptionsProperty (
        module Exports, FreeFormLayoutCanvasSizeOptionsProperty(..),
        mkFreeFormLayoutCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutScreenCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data FreeFormLayoutCanvasSizeOptionsProperty
  = FreeFormLayoutCanvasSizeOptionsProperty {screenCanvasSizeOptions :: (Prelude.Maybe FreeFormLayoutScreenCanvasSizeOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutCanvasSizeOptionsProperty ::
  FreeFormLayoutCanvasSizeOptionsProperty
mkFreeFormLayoutCanvasSizeOptionsProperty
  = FreeFormLayoutCanvasSizeOptionsProperty
      {screenCanvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutCanvasSizeOptionsProperty where
  toResourceProperties FreeFormLayoutCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormLayoutCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScreenCanvasSizeOptions"
                              Prelude.<$> screenCanvasSizeOptions])}
instance JSON.ToJSON FreeFormLayoutCanvasSizeOptionsProperty where
  toJSON FreeFormLayoutCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScreenCanvasSizeOptions"
                 Prelude.<$> screenCanvasSizeOptions]))
instance Property "ScreenCanvasSizeOptions" FreeFormLayoutCanvasSizeOptionsProperty where
  type PropertyType "ScreenCanvasSizeOptions" FreeFormLayoutCanvasSizeOptionsProperty = FreeFormLayoutScreenCanvasSizeOptionsProperty
  set newValue FreeFormLayoutCanvasSizeOptionsProperty {}
    = FreeFormLayoutCanvasSizeOptionsProperty
        {screenCanvasSizeOptions = Prelude.pure newValue, ..}