module Stratosphere.NimbleStudio.LaunchProfile.StreamingSessionStorageRootProperty (
        StreamingSessionStorageRootProperty(..),
        mkStreamingSessionStorageRootProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamingSessionStorageRootProperty
  = StreamingSessionStorageRootProperty {linux :: (Prelude.Maybe (Value Prelude.Text)),
                                         windows :: (Prelude.Maybe (Value Prelude.Text))}
mkStreamingSessionStorageRootProperty ::
  StreamingSessionStorageRootProperty
mkStreamingSessionStorageRootProperty
  = StreamingSessionStorageRootProperty
      {linux = Prelude.Nothing, windows = Prelude.Nothing}
instance ToResourceProperties StreamingSessionStorageRootProperty where
  toResourceProperties StreamingSessionStorageRootProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile.StreamingSessionStorageRoot",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Linux" Prelude.<$> linux,
                            (JSON..=) "Windows" Prelude.<$> windows])}
instance JSON.ToJSON StreamingSessionStorageRootProperty where
  toJSON StreamingSessionStorageRootProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Linux" Prelude.<$> linux,
               (JSON..=) "Windows" Prelude.<$> windows]))
instance Property "Linux" StreamingSessionStorageRootProperty where
  type PropertyType "Linux" StreamingSessionStorageRootProperty = Value Prelude.Text
  set newValue StreamingSessionStorageRootProperty {..}
    = StreamingSessionStorageRootProperty
        {linux = Prelude.pure newValue, ..}
instance Property "Windows" StreamingSessionStorageRootProperty where
  type PropertyType "Windows" StreamingSessionStorageRootProperty = Value Prelude.Text
  set newValue StreamingSessionStorageRootProperty {..}
    = StreamingSessionStorageRootProperty
        {windows = Prelude.pure newValue, ..}