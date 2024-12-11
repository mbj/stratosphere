module Stratosphere.MediaLive.Input.MulticastSettingsCreateRequestProperty (
        module Exports, MulticastSettingsCreateRequestProperty(..),
        mkMulticastSettingsCreateRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.MulticastSourceCreateRequestProperty as Exports
import Stratosphere.ResourceProperties
data MulticastSettingsCreateRequestProperty
  = MulticastSettingsCreateRequestProperty {sources :: (Prelude.Maybe [MulticastSourceCreateRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastSettingsCreateRequestProperty ::
  MulticastSettingsCreateRequestProperty
mkMulticastSettingsCreateRequestProperty
  = MulticastSettingsCreateRequestProperty
      {sources = Prelude.Nothing}
instance ToResourceProperties MulticastSettingsCreateRequestProperty where
  toResourceProperties MulticastSettingsCreateRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MulticastSettingsCreateRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Sources" Prelude.<$> sources])}
instance JSON.ToJSON MulticastSettingsCreateRequestProperty where
  toJSON MulticastSettingsCreateRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Sources" Prelude.<$> sources]))
instance Property "Sources" MulticastSettingsCreateRequestProperty where
  type PropertyType "Sources" MulticastSettingsCreateRequestProperty = [MulticastSourceCreateRequestProperty]
  set newValue MulticastSettingsCreateRequestProperty {}
    = MulticastSettingsCreateRequestProperty
        {sources = Prelude.pure newValue, ..}