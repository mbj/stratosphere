module Stratosphere.MediaLive.Channel.CaptionRectangleProperty (
        CaptionRectangleProperty(..), mkCaptionRectangleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CaptionRectangleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionrectangle.html>
    CaptionRectangleProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionrectangle.html#cfn-medialive-channel-captionrectangle-height>
                              height :: (Prelude.Maybe (Value Prelude.Double)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionrectangle.html#cfn-medialive-channel-captionrectangle-leftoffset>
                              leftOffset :: (Prelude.Maybe (Value Prelude.Double)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionrectangle.html#cfn-medialive-channel-captionrectangle-topoffset>
                              topOffset :: (Prelude.Maybe (Value Prelude.Double)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionrectangle.html#cfn-medialive-channel-captionrectangle-width>
                              width :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptionRectangleProperty :: CaptionRectangleProperty
mkCaptionRectangleProperty
  = CaptionRectangleProperty
      {haddock_workaround_ = (), height = Prelude.Nothing,
       leftOffset = Prelude.Nothing, topOffset = Prelude.Nothing,
       width = Prelude.Nothing}
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