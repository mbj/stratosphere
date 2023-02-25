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
  = ManifestOverridesPayloadProperty {payloadData :: (Prelude.Maybe (Value Prelude.Text))}
mkManifestOverridesPayloadProperty ::
  ManifestOverridesPayloadProperty
mkManifestOverridesPayloadProperty
  = ManifestOverridesPayloadProperty {payloadData = Prelude.Nothing}
instance ToResourceProperties ManifestOverridesPayloadProperty where
  toResourceProperties ManifestOverridesPayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::ApplicationInstance.ManifestOverridesPayload",
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
  set newValue ManifestOverridesPayloadProperty {}
    = ManifestOverridesPayloadProperty
        {payloadData = Prelude.pure newValue, ..}