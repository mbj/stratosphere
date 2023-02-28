module Stratosphere.MediaLive.Channel.CaptionRectangleProperty (
        CaptionRectangleProperty(..), mkCaptionRectangleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptionRectangleProperty
  = CaptionRectangleProperty {height :: (Prelude.Maybe (Value Prelude.Double)),
                              leftOffset :: (Prelude.Maybe (Value Prelude.Double)),
                              topOffset :: (Prelude.Maybe (Value Prelude.Double)),
                              width :: (Prelude.Maybe (Value Prelude.Double))}
mkCaptionRectangleProperty :: CaptionRectangleProperty
mkCaptionRectangleProperty
  = CaptionRectangleProperty
      {height = Prelude.Nothing, leftOffset = Prelude.Nothing,
       topOffset = Prelude.Nothing, width = Prelude.Nothing}
instance ToResourceProperties CaptionRectangleProperty where
  toResourceProperties CaptionRectangleProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionRectangle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "LeftOffset" Prelude.<$> leftOffset,
                            (JSON..=) "TopOffset" Prelude.<$> topOffset,
                            (JSON..=) "Width" Prelude.<$> width])}
instance JSON.ToJSON CaptionRectangleProperty where
  toJSON CaptionRectangleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "LeftOffset" Prelude.<$> leftOffset,
               (JSON..=) "TopOffset" Prelude.<$> topOffset,
               (JSON..=) "Width" Prelude.<$> width]))
instance Property "Height" CaptionRectangleProperty where
  type PropertyType "Height" CaptionRectangleProperty = Value Prelude.Double
  set newValue CaptionRectangleProperty {..}
    = CaptionRectangleProperty {height = Prelude.pure newValue, ..}
instance Property "LeftOffset" CaptionRectangleProperty where
  type PropertyType "LeftOffset" CaptionRectangleProperty = Value Prelude.Double
  set newValue CaptionRectangleProperty {..}
    = CaptionRectangleProperty {leftOffset = Prelude.pure newValue, ..}
instance Property "TopOffset" CaptionRectangleProperty where
  type PropertyType "TopOffset" CaptionRectangleProperty = Value Prelude.Double
  set newValue CaptionRectangleProperty {..}
    = CaptionRectangleProperty {topOffset = Prelude.pure newValue, ..}
instance Property "Width" CaptionRectangleProperty where
  type PropertyType "Width" CaptionRectangleProperty = Value Prelude.Double
  set newValue CaptionRectangleProperty {..}
    = CaptionRectangleProperty {width = Prelude.pure newValue, ..}