module Stratosphere.MediaPackageV2.OriginEndpoint.ScteHlsProperty (
        ScteHlsProperty(..), mkScteHlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScteHlsProperty
  = ScteHlsProperty {adMarkerHls :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScteHlsProperty :: ScteHlsProperty
mkScteHlsProperty = ScteHlsProperty {adMarkerHls = Prelude.Nothing}
instance ToResourceProperties ScteHlsProperty where
  toResourceProperties ScteHlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.ScteHls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkerHls" Prelude.<$> adMarkerHls])}
instance JSON.ToJSON ScteHlsProperty where
  toJSON ScteHlsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkerHls" Prelude.<$> adMarkerHls]))
instance Property "AdMarkerHls" ScteHlsProperty where
  type PropertyType "AdMarkerHls" ScteHlsProperty = Value Prelude.Text
  set newValue ScteHlsProperty {}
    = ScteHlsProperty {adMarkerHls = Prelude.pure newValue, ..}