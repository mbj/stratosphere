module Stratosphere.MediaConnect.FlowOutput.EncodingParametersProperty (
        EncodingParametersProperty(..), mkEncodingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncodingParametersProperty
  = EncodingParametersProperty {compressionFactor :: (Value Prelude.Double),
                                encoderProfile :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncodingParametersProperty ::
  Value Prelude.Double -> EncodingParametersProperty
mkEncodingParametersProperty compressionFactor
  = EncodingParametersProperty
      {compressionFactor = compressionFactor,
       encoderProfile = Prelude.Nothing}
instance ToResourceProperties EncodingParametersProperty where
  toResourceProperties EncodingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.EncodingParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CompressionFactor" JSON..= compressionFactor]
                           (Prelude.catMaybes
                              [(JSON..=) "EncoderProfile" Prelude.<$> encoderProfile]))}
instance JSON.ToJSON EncodingParametersProperty where
  toJSON EncodingParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CompressionFactor" JSON..= compressionFactor]
              (Prelude.catMaybes
                 [(JSON..=) "EncoderProfile" Prelude.<$> encoderProfile])))
instance Property "CompressionFactor" EncodingParametersProperty where
  type PropertyType "CompressionFactor" EncodingParametersProperty = Value Prelude.Double
  set newValue EncodingParametersProperty {..}
    = EncodingParametersProperty {compressionFactor = newValue, ..}
instance Property "EncoderProfile" EncodingParametersProperty where
  type PropertyType "EncoderProfile" EncodingParametersProperty = Value Prelude.Text
  set newValue EncodingParametersProperty {..}
    = EncodingParametersProperty
        {encoderProfile = Prelude.pure newValue, ..}