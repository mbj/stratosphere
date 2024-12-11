module Stratosphere.IVS.EncoderConfiguration.VideoProperty (
        VideoProperty(..), mkVideoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoProperty
  = VideoProperty {bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                   framerate :: (Prelude.Maybe (Value Prelude.Double)),
                   height :: (Prelude.Maybe (Value Prelude.Integer)),
                   width :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoProperty :: VideoProperty
mkVideoProperty
  = VideoProperty
      {bitrate = Prelude.Nothing, framerate = Prelude.Nothing,
       height = Prelude.Nothing, width = Prelude.Nothing}
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