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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-mssmanifest.html>
    MssManifestProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-mssmanifest.html#cfn-mediapackage-packagingconfiguration-mssmanifest-manifestname>
                         manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-mssmanifest.html#cfn-mediapackage-packagingconfiguration-mssmanifest-streamselection>
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssManifestProperty :: MssManifestProperty
mkMssManifestProperty
  = MssManifestProperty
      {haddock_workaround_ = (), manifestName = Prelude.Nothing,
       streamSelection = Prelude.Nothing}
instance ToResourceProperties MssManifestProperty where
  toResourceProperties MssManifestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.MssManifest",
         supportsTags = Prelude.False,
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