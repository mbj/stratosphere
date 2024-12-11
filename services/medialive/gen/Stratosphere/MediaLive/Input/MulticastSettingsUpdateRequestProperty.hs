module Stratosphere.MediaLive.Input.MulticastSettingsUpdateRequestProperty (
        module Exports, MulticastSettingsUpdateRequestProperty(..),
        mkMulticastSettingsUpdateRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.MulticastSourceUpdateRequestProperty as Exports
import Stratosphere.ResourceProperties
data MulticastSettingsUpdateRequestProperty
  = MulticastSettingsUpdateRequestProperty {sources :: (Prelude.Maybe [MulticastSourceUpdateRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastSettingsUpdateRequestProperty ::
  MulticastSettingsUpdateRequestProperty
mkMulticastSettingsUpdateRequestProperty
  = MulticastSettingsUpdateRequestProperty
      {sources = Prelude.Nothing}
instance ToResourceProperties MulticastSettingsUpdateRequestProperty where
  toResourceProperties MulticastSettingsUpdateRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MulticastSettingsUpdateRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Sources" Prelude.<$> sources])}
instance JSON.ToJSON MulticastSettingsUpdateRequestProperty where
  toJSON MulticastSettingsUpdateRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Sources" Prelude.<$> sources]))
instance Property "Sources" MulticastSettingsUpdateRequestProperty where
  type PropertyType "Sources" MulticastSettingsUpdateRequestProperty = [MulticastSourceUpdateRequestProperty]
  set newValue MulticastSettingsUpdateRequestProperty {}
    = MulticastSettingsUpdateRequestProperty
        {sources = Prelude.pure newValue, ..}