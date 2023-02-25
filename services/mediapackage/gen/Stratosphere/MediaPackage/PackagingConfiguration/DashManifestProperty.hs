module Stratosphere.MediaPackage.PackagingConfiguration.DashManifestProperty (
        module Exports, DashManifestProperty(..), mkDashManifestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashManifestProperty
  = DashManifestProperty {manifestLayout :: (Prelude.Maybe (Value Prelude.Text)),
                          manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                          minBufferTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                          profile :: (Prelude.Maybe (Value Prelude.Text)),
                          scteMarkersSource :: (Prelude.Maybe (Value Prelude.Text)),
                          streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
mkDashManifestProperty :: DashManifestProperty
mkDashManifestProperty
  = DashManifestProperty
      {manifestLayout = Prelude.Nothing, manifestName = Prelude.Nothing,
       minBufferTimeSeconds = Prelude.Nothing, profile = Prelude.Nothing,
       scteMarkersSource = Prelude.Nothing,
       streamSelection = Prelude.Nothing}
instance ToResourceProperties DashManifestProperty where
  toResourceProperties DashManifestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.DashManifest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
                            (JSON..=) "ManifestName" Prelude.<$> manifestName,
                            (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "ScteMarkersSource" Prelude.<$> scteMarkersSource,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection])}
instance JSON.ToJSON DashManifestProperty where
  toJSON DashManifestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
               (JSON..=) "ManifestName" Prelude.<$> manifestName,
               (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "ScteMarkersSource" Prelude.<$> scteMarkersSource,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection]))
instance Property "ManifestLayout" DashManifestProperty where
  type PropertyType "ManifestLayout" DashManifestProperty = Value Prelude.Text
  set newValue DashManifestProperty {..}
    = DashManifestProperty {manifestLayout = Prelude.pure newValue, ..}
instance Property "ManifestName" DashManifestProperty where
  type PropertyType "ManifestName" DashManifestProperty = Value Prelude.Text
  set newValue DashManifestProperty {..}
    = DashManifestProperty {manifestName = Prelude.pure newValue, ..}
instance Property "MinBufferTimeSeconds" DashManifestProperty where
  type PropertyType "MinBufferTimeSeconds" DashManifestProperty = Value Prelude.Integer
  set newValue DashManifestProperty {..}
    = DashManifestProperty
        {minBufferTimeSeconds = Prelude.pure newValue, ..}
instance Property "Profile" DashManifestProperty where
  type PropertyType "Profile" DashManifestProperty = Value Prelude.Text
  set newValue DashManifestProperty {..}
    = DashManifestProperty {profile = Prelude.pure newValue, ..}
instance Property "ScteMarkersSource" DashManifestProperty where
  type PropertyType "ScteMarkersSource" DashManifestProperty = Value Prelude.Text
  set newValue DashManifestProperty {..}
    = DashManifestProperty
        {scteMarkersSource = Prelude.pure newValue, ..}
instance Property "StreamSelection" DashManifestProperty where
  type PropertyType "StreamSelection" DashManifestProperty = StreamSelectionProperty
  set newValue DashManifestProperty {..}
    = DashManifestProperty
        {streamSelection = Prelude.pure newValue, ..}