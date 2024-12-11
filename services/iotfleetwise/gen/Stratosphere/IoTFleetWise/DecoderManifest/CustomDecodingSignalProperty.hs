module Stratosphere.IoTFleetWise.DecoderManifest.CustomDecodingSignalProperty (
        CustomDecodingSignalProperty(..), mkCustomDecodingSignalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDecodingSignalProperty
  = CustomDecodingSignalProperty {id :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDecodingSignalProperty ::
  Value Prelude.Text -> CustomDecodingSignalProperty
mkCustomDecodingSignalProperty id
  = CustomDecodingSignalProperty {id = id}
instance ToResourceProperties CustomDecodingSignalProperty where
  toResourceProperties CustomDecodingSignalProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.CustomDecodingSignal",
         supportsTags = Prelude.False, properties = ["Id" JSON..= id]}
instance JSON.ToJSON CustomDecodingSignalProperty where
  toJSON CustomDecodingSignalProperty {..}
    = JSON.object ["Id" JSON..= id]
instance Property "Id" CustomDecodingSignalProperty where
  type PropertyType "Id" CustomDecodingSignalProperty = Value Prelude.Text
  set newValue CustomDecodingSignalProperty {}
    = CustomDecodingSignalProperty {id = newValue, ..}