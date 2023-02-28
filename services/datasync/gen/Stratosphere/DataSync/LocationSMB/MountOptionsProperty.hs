module Stratosphere.DataSync.LocationSMB.MountOptionsProperty (
        MountOptionsProperty(..), mkMountOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MountOptionsProperty
  = MountOptionsProperty {version :: (Prelude.Maybe (Value Prelude.Text))}
mkMountOptionsProperty :: MountOptionsProperty
mkMountOptionsProperty
  = MountOptionsProperty {version = Prelude.Nothing}
instance ToResourceProperties MountOptionsProperty where
  toResourceProperties MountOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationSMB.MountOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON MountOptionsProperty where
  toJSON MountOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))
instance Property "Version" MountOptionsProperty where
  type PropertyType "Version" MountOptionsProperty = Value Prelude.Text
  set newValue MountOptionsProperty {}
    = MountOptionsProperty {version = Prelude.pure newValue, ..}