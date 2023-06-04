module Stratosphere.QuickSight.Analysis.GridLayoutScreenCanvasSizeOptionsProperty (
        GridLayoutScreenCanvasSizeOptionsProperty(..),
        mkGridLayoutScreenCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GridLayoutScreenCanvasSizeOptionsProperty
  = GridLayoutScreenCanvasSizeOptionsProperty {optimizedViewPortWidth :: (Prelude.Maybe (Value Prelude.Text)),
                                               resizeOption :: (Value Prelude.Text)}
mkGridLayoutScreenCanvasSizeOptionsProperty ::
  Value Prelude.Text -> GridLayoutScreenCanvasSizeOptionsProperty
mkGridLayoutScreenCanvasSizeOptionsProperty resizeOption
  = GridLayoutScreenCanvasSizeOptionsProperty
      {resizeOption = resizeOption,
       optimizedViewPortWidth = Prelude.Nothing}
instance ToResourceProperties GridLayoutScreenCanvasSizeOptionsProperty where
  toResourceProperties GridLayoutScreenCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GridLayoutScreenCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResizeOption" JSON..= resizeOption]
                           (Prelude.catMaybes
                              [(JSON..=) "OptimizedViewPortWidth"
                                 Prelude.<$> optimizedViewPortWidth]))}
instance JSON.ToJSON GridLayoutScreenCanvasSizeOptionsProperty where
  toJSON GridLayoutScreenCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResizeOption" JSON..= resizeOption]
              (Prelude.catMaybes
                 [(JSON..=) "OptimizedViewPortWidth"
                    Prelude.<$> optimizedViewPortWidth])))
instance Property "OptimizedViewPortWidth" GridLayoutScreenCanvasSizeOptionsProperty where
  type PropertyType "OptimizedViewPortWidth" GridLayoutScreenCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue GridLayoutScreenCanvasSizeOptionsProperty {..}
    = GridLayoutScreenCanvasSizeOptionsProperty
        {optimizedViewPortWidth = Prelude.pure newValue, ..}
instance Property "ResizeOption" GridLayoutScreenCanvasSizeOptionsProperty where
  type PropertyType "ResizeOption" GridLayoutScreenCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue GridLayoutScreenCanvasSizeOptionsProperty {..}
    = GridLayoutScreenCanvasSizeOptionsProperty
        {resizeOption = newValue, ..}