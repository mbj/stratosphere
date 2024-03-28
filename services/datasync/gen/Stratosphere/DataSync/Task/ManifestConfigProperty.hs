module Stratosphere.DataSync.Task.ManifestConfigProperty (
        module Exports, ManifestConfigProperty(..),
        mkManifestConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestConfigProperty
  = ManifestConfigProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                            format :: (Prelude.Maybe (Value Prelude.Text)),
                            source :: SourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestConfigProperty ::
  SourceProperty -> ManifestConfigProperty
mkManifestConfigProperty source
  = ManifestConfigProperty
      {source = source, action = Prelude.Nothing,
       format = Prelude.Nothing}
instance ToResourceProperties ManifestConfigProperty where
  toResourceProperties ManifestConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.ManifestConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Format" Prelude.<$> format]))}
instance JSON.ToJSON ManifestConfigProperty where
  toJSON ManifestConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Format" Prelude.<$> format])))
instance Property "Action" ManifestConfigProperty where
  type PropertyType "Action" ManifestConfigProperty = Value Prelude.Text
  set newValue ManifestConfigProperty {..}
    = ManifestConfigProperty {action = Prelude.pure newValue, ..}
instance Property "Format" ManifestConfigProperty where
  type PropertyType "Format" ManifestConfigProperty = Value Prelude.Text
  set newValue ManifestConfigProperty {..}
    = ManifestConfigProperty {format = Prelude.pure newValue, ..}
instance Property "Source" ManifestConfigProperty where
  type PropertyType "Source" ManifestConfigProperty = SourceProperty
  set newValue ManifestConfigProperty {..}
    = ManifestConfigProperty {source = newValue, ..}