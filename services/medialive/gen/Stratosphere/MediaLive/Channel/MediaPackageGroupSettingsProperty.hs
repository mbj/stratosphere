module Stratosphere.MediaLive.Channel.MediaPackageGroupSettingsProperty (
        module Exports, MediaPackageGroupSettingsProperty(..),
        mkMediaPackageGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data MediaPackageGroupSettingsProperty
  = MediaPackageGroupSettingsProperty {destination :: (Prelude.Maybe OutputLocationRefProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageGroupSettingsProperty ::
  MediaPackageGroupSettingsProperty
mkMediaPackageGroupSettingsProperty
  = MediaPackageGroupSettingsProperty {destination = Prelude.Nothing}
instance ToResourceProperties MediaPackageGroupSettingsProperty where
  toResourceProperties MediaPackageGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination])}
instance JSON.ToJSON MediaPackageGroupSettingsProperty where
  toJSON MediaPackageGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination]))
instance Property "Destination" MediaPackageGroupSettingsProperty where
  type PropertyType "Destination" MediaPackageGroupSettingsProperty = OutputLocationRefProperty
  set newValue MediaPackageGroupSettingsProperty {}
    = MediaPackageGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}