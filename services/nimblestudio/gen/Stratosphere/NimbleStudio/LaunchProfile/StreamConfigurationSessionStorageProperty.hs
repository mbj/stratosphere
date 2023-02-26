module Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationSessionStorageProperty (
        module Exports, StreamConfigurationSessionStorageProperty(..),
        mkStreamConfigurationSessionStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.LaunchProfile.StreamingSessionStorageRootProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamConfigurationSessionStorageProperty
  = StreamConfigurationSessionStorageProperty {mode :: (ValueList Prelude.Text),
                                               root :: (Prelude.Maybe StreamingSessionStorageRootProperty)}
mkStreamConfigurationSessionStorageProperty ::
  ValueList Prelude.Text -> StreamConfigurationSessionStorageProperty
mkStreamConfigurationSessionStorageProperty mode
  = StreamConfigurationSessionStorageProperty
      {mode = mode, root = Prelude.Nothing}
instance ToResourceProperties StreamConfigurationSessionStorageProperty where
  toResourceProperties StreamConfigurationSessionStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile.StreamConfigurationSessionStorage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes [(JSON..=) "Root" Prelude.<$> root]))}
instance JSON.ToJSON StreamConfigurationSessionStorageProperty where
  toJSON StreamConfigurationSessionStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes [(JSON..=) "Root" Prelude.<$> root])))
instance Property "Mode" StreamConfigurationSessionStorageProperty where
  type PropertyType "Mode" StreamConfigurationSessionStorageProperty = ValueList Prelude.Text
  set newValue StreamConfigurationSessionStorageProperty {..}
    = StreamConfigurationSessionStorageProperty {mode = newValue, ..}
instance Property "Root" StreamConfigurationSessionStorageProperty where
  type PropertyType "Root" StreamConfigurationSessionStorageProperty = StreamingSessionStorageRootProperty
  set newValue StreamConfigurationSessionStorageProperty {..}
    = StreamConfigurationSessionStorageProperty
        {root = Prelude.pure newValue, ..}