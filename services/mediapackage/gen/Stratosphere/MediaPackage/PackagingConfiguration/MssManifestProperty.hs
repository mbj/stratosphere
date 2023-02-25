module Stratosphere.MediaPackage.PackagingConfiguration.MssManifestProperty (
        module Exports, MssManifestProperty(..), mkMssManifestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MssManifestProperty
  = MssManifestProperty {manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
mkMssManifestProperty :: MssManifestProperty
mkMssManifestProperty
  = MssManifestProperty
      {manifestName = Prelude.Nothing, streamSelection = Prelude.Nothing}
instance ToResourceProperties MssManifestProperty where
  toResourceProperties MssManifestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.MssManifest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestName" Prelude.<$> manifestName,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection])}
instance JSON.ToJSON MssManifestProperty where
  toJSON MssManifestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestName" Prelude.<$> manifestName,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection]))
instance Property "ManifestName" MssManifestProperty where
  type PropertyType "ManifestName" MssManifestProperty = Value Prelude.Text
  set newValue MssManifestProperty {..}
    = MssManifestProperty {manifestName = Prelude.pure newValue, ..}
instance Property "StreamSelection" MssManifestProperty where
  type PropertyType "StreamSelection" MssManifestProperty = StreamSelectionProperty
  set newValue MssManifestProperty {..}
    = MssManifestProperty {streamSelection = Prelude.pure newValue, ..}