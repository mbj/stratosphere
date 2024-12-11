module Stratosphere.MediaLive.Input.SrtSettingsRequestProperty (
        module Exports, SrtSettingsRequestProperty(..),
        mkSrtSettingsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Input.SrtCallerSourceRequestProperty as Exports
import Stratosphere.ResourceProperties
data SrtSettingsRequestProperty
  = SrtSettingsRequestProperty {srtCallerSources :: (Prelude.Maybe [SrtCallerSourceRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtSettingsRequestProperty :: SrtSettingsRequestProperty
mkSrtSettingsRequestProperty
  = SrtSettingsRequestProperty {srtCallerSources = Prelude.Nothing}
instance ToResourceProperties SrtSettingsRequestProperty where
  toResourceProperties SrtSettingsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.SrtSettingsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SrtCallerSources" Prelude.<$> srtCallerSources])}
instance JSON.ToJSON SrtSettingsRequestProperty where
  toJSON SrtSettingsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SrtCallerSources" Prelude.<$> srtCallerSources]))
instance Property "SrtCallerSources" SrtSettingsRequestProperty where
  type PropertyType "SrtCallerSources" SrtSettingsRequestProperty = [SrtCallerSourceRequestProperty]
  set newValue SrtSettingsRequestProperty {}
    = SrtSettingsRequestProperty
        {srtCallerSources = Prelude.pure newValue, ..}