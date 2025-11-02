module Stratosphere.IVS.EncoderConfiguration.VideoProperty (
        VideoProperty(..), mkVideoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-encoderconfiguration-video.html>
    VideoProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-encoderconfiguration-video.html#cfn-ivs-encoderconfiguration-video-bitrate>
                   bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-encoderconfiguration-video.html#cfn-ivs-encoderconfiguration-video-framerate>
                   framerate :: (Prelude.Maybe (Value Prelude.Double)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-encoderconfiguration-video.html#cfn-ivs-encoderconfiguration-video-height>
                   height :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-encoderconfiguration-video.html#cfn-ivs-encoderconfiguration-video-width>
                   width :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoProperty :: VideoProperty
mkVideoProperty
  = VideoProperty
      {haddock_workaround_ = (), bitrate = Prelude.Nothing,
       framerate = Prelude.Nothing, height = Prelude.Nothing,
       width = Prelude.Nothing}
instance ToResourceProperties VideoProperty where
  toResourceProperties VideoProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::EncoderConfiguration.Video",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "Framerate" Prelude.<$> framerate,
                            (JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "Width" Prelude.<$> width])}
instance JSON.ToJSON VideoProperty where
  toJSON VideoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "Framerate" Prelude.<$> framerate,
               (JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "Width" Prelude.<$> width]))
instance Property "Bitrate" VideoProperty where
  type PropertyType "Bitrate" VideoProperty = Value Prelude.Integer
  set newValue VideoProperty {..}
    = VideoProperty {bitrate = Prelude.pure newValue, ..}
instance Property "Framerate" VideoProperty where
  type PropertyType "Framerate" VideoProperty = Value Prelude.Double
  set newValue VideoProperty {..}
    = VideoProperty {framerate = Prelude.pure newValue, ..}
instance Property "Height" VideoProperty where
  type PropertyType "Height" VideoProperty = Value Prelude.Integer
  set newValue VideoProperty {..}
    = VideoProperty {height = Prelude.pure newValue, ..}
instance Property "Width" VideoProperty where
  type PropertyType "Width" VideoProperty = Value Prelude.Integer
  set newValue VideoProperty {..}
    = VideoProperty {width = Prelude.pure newValue, ..}