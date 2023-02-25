module Stratosphere.MediaLive.Channel.InputSpecificationProperty (
        InputSpecificationProperty(..), mkInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSpecificationProperty
  = InputSpecificationProperty {codec :: (Prelude.Maybe (Value Prelude.Text)),
                                maximumBitrate :: (Prelude.Maybe (Value Prelude.Text)),
                                resolution :: (Prelude.Maybe (Value Prelude.Text))}
mkInputSpecificationProperty :: InputSpecificationProperty
mkInputSpecificationProperty
  = InputSpecificationProperty
      {codec = Prelude.Nothing, maximumBitrate = Prelude.Nothing,
       resolution = Prelude.Nothing}
instance ToResourceProperties InputSpecificationProperty where
  toResourceProperties InputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Codec" Prelude.<$> codec,
                            (JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
                            (JSON..=) "Resolution" Prelude.<$> resolution])}
instance JSON.ToJSON InputSpecificationProperty where
  toJSON InputSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Codec" Prelude.<$> codec,
               (JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
               (JSON..=) "Resolution" Prelude.<$> resolution]))
instance Property "Codec" InputSpecificationProperty where
  type PropertyType "Codec" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty {codec = Prelude.pure newValue, ..}
instance Property "MaximumBitrate" InputSpecificationProperty where
  type PropertyType "MaximumBitrate" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty
        {maximumBitrate = Prelude.pure newValue, ..}
instance Property "Resolution" InputSpecificationProperty where
  type PropertyType "Resolution" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty
        {resolution = Prelude.pure newValue, ..}