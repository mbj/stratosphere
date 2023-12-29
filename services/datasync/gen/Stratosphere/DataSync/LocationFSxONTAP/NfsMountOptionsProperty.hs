module Stratosphere.DataSync.LocationFSxONTAP.NfsMountOptionsProperty (
        NfsMountOptionsProperty(..), mkNfsMountOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NfsMountOptionsProperty
  = NfsMountOptionsProperty {version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNfsMountOptionsProperty :: NfsMountOptionsProperty
mkNfsMountOptionsProperty
  = NfsMountOptionsProperty {version = Prelude.Nothing}
instance ToResourceProperties NfsMountOptionsProperty where
  toResourceProperties NfsMountOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP.NfsMountOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON NfsMountOptionsProperty where
  toJSON NfsMountOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))
instance Property "Version" NfsMountOptionsProperty where
  type PropertyType "Version" NfsMountOptionsProperty = Value Prelude.Text
  set newValue NfsMountOptionsProperty {}
    = NfsMountOptionsProperty {version = Prelude.pure newValue, ..}