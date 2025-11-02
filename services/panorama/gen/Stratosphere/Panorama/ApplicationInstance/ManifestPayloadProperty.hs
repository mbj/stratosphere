module Stratosphere.Panorama.ApplicationInstance.ManifestPayloadProperty (
        ManifestPayloadProperty(..), mkManifestPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestPayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-applicationinstance-manifestpayload.html>
    ManifestPayloadProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-applicationinstance-manifestpayload.html#cfn-panorama-applicationinstance-manifestpayload-payloaddata>
                             payloadData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestPayloadProperty :: ManifestPayloadProperty
mkManifestPayloadProperty
  = ManifestPayloadProperty
      {haddock_workaround_ = (), payloadData = Prelude.Nothing}
instance ToResourceProperties ManifestPayloadProperty where
  toResourceProperties ManifestPayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::ApplicationInstance.ManifestPayload",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PayloadData" Prelude.<$> payloadData])}
instance JSON.ToJSON ManifestPayloadProperty where
  toJSON ManifestPayloadProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PayloadData" Prelude.<$> payloadData]))
instance Property "PayloadData" ManifestPayloadProperty where
  type PropertyType "PayloadData" ManifestPayloadProperty = Value Prelude.Text
  set newValue ManifestPayloadProperty {..}
    = ManifestPayloadProperty {payloadData = Prelude.pure newValue, ..}