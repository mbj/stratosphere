module Stratosphere.MediaPackageV2.OriginEndpoint.ScteDashProperty (
        ScteDashProperty(..), mkScteDashProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScteDashProperty
  = ScteDashProperty {adMarkerDash :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScteDashProperty :: ScteDashProperty
mkScteDashProperty
  = ScteDashProperty {adMarkerDash = Prelude.Nothing}
instance ToResourceProperties ScteDashProperty where
  toResourceProperties ScteDashProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.ScteDash",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkerDash" Prelude.<$> adMarkerDash])}
instance JSON.ToJSON ScteDashProperty where
  toJSON ScteDashProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkerDash" Prelude.<$> adMarkerDash]))
instance Property "AdMarkerDash" ScteDashProperty where
  type PropertyType "AdMarkerDash" ScteDashProperty = Value Prelude.Text
  set newValue ScteDashProperty {}
    = ScteDashProperty {adMarkerDash = Prelude.pure newValue, ..}