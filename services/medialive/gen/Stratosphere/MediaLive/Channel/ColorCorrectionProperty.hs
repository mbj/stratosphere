module Stratosphere.MediaLive.Channel.ColorCorrectionProperty (
        ColorCorrectionProperty(..), mkColorCorrectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColorCorrectionProperty
  = ColorCorrectionProperty {inputColorSpace :: (Prelude.Maybe (Value Prelude.Text)),
                             outputColorSpace :: (Prelude.Maybe (Value Prelude.Text)),
                             uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorCorrectionProperty :: ColorCorrectionProperty
mkColorCorrectionProperty
  = ColorCorrectionProperty
      {inputColorSpace = Prelude.Nothing,
       outputColorSpace = Prelude.Nothing, uri = Prelude.Nothing}
instance ToResourceProperties ColorCorrectionProperty where
  toResourceProperties ColorCorrectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ColorCorrection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputColorSpace" Prelude.<$> inputColorSpace,
                            (JSON..=) "OutputColorSpace" Prelude.<$> outputColorSpace,
                            (JSON..=) "Uri" Prelude.<$> uri])}
instance JSON.ToJSON ColorCorrectionProperty where
  toJSON ColorCorrectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputColorSpace" Prelude.<$> inputColorSpace,
               (JSON..=) "OutputColorSpace" Prelude.<$> outputColorSpace,
               (JSON..=) "Uri" Prelude.<$> uri]))
instance Property "InputColorSpace" ColorCorrectionProperty where
  type PropertyType "InputColorSpace" ColorCorrectionProperty = Value Prelude.Text
  set newValue ColorCorrectionProperty {..}
    = ColorCorrectionProperty
        {inputColorSpace = Prelude.pure newValue, ..}
instance Property "OutputColorSpace" ColorCorrectionProperty where
  type PropertyType "OutputColorSpace" ColorCorrectionProperty = Value Prelude.Text
  set newValue ColorCorrectionProperty {..}
    = ColorCorrectionProperty
        {outputColorSpace = Prelude.pure newValue, ..}
instance Property "Uri" ColorCorrectionProperty where
  type PropertyType "Uri" ColorCorrectionProperty = Value Prelude.Text
  set newValue ColorCorrectionProperty {..}
    = ColorCorrectionProperty {uri = Prelude.pure newValue, ..}