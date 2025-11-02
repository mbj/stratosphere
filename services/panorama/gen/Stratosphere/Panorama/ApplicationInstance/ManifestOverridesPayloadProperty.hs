module Stratosphere.Panorama.ApplicationInstance.ManifestOverridesPayloadProperty (
        ManifestOverridesPayloadProperty(..),
        mkManifestOverridesPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestOverridesPayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-applicationinstance-manifestoverridespayload.html>
    ManifestOverridesPayloadProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-applicationinstance-manifestoverridespayload.html#cfn-panorama-applicationinstance-manifestoverridespayload-payloaddata>
                                      payloadData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestOverridesPayloadProperty ::
  ManifestOverridesPayloadProperty
mkManifestOverridesPayloadProperty
  = ManifestOverridesPayloadProperty
      {haddock_workaround_ = (), payloadData = Prelude.Nothing}
instance ToResourceProperties ManifestOverridesPayloadProperty where
  toResourceProperties ManifestOverridesPayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::ApplicationInstance.ManifestOverridesPayload",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PayloadData" Prelude.<$> payloadData])}
instance JSON.ToJSON ManifestOverridesPayloadProperty where
  toJSON ManifestOverridesPayloadProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PayloadData" Prelude.<$> payloadData]))
instance Property "PayloadData" ManifestOverridesPayloadProperty where
  type PropertyType "PayloadData" ManifestOverridesPayloadProperty = Value Prelude.Text
  set newValue ManifestOverridesPayloadProperty {..}
    = ManifestOverridesPayloadProperty
        {payloadData = Prelude.pure newValue, ..}