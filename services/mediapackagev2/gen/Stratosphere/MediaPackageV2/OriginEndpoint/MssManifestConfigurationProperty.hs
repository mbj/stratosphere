module Stratosphere.MediaPackageV2.OriginEndpoint.MssManifestConfigurationProperty (
        module Exports, MssManifestConfigurationProperty(..),
        mkMssManifestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MssManifestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-mssmanifestconfiguration.html>
    MssManifestConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-mssmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-mssmanifestconfiguration-filterconfiguration>
                                      filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-mssmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-mssmanifestconfiguration-manifestlayout>
                                      manifestLayout :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-mssmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-mssmanifestconfiguration-manifestname>
                                      manifestName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-mssmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-mssmanifestconfiguration-manifestwindowseconds>
                                      manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssManifestConfigurationProperty ::
  Value Prelude.Text -> MssManifestConfigurationProperty
mkMssManifestConfigurationProperty manifestName
  = MssManifestConfigurationProperty
      {haddock_workaround_ = (), manifestName = manifestName,
       filterConfiguration = Prelude.Nothing,
       manifestLayout = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing}
instance ToResourceProperties MssManifestConfigurationProperty where
  toResourceProperties MssManifestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.MssManifestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestName" JSON..= manifestName]
                           (Prelude.catMaybes
                              [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                               (JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
                               (JSON..=) "ManifestWindowSeconds"
                                 Prelude.<$> manifestWindowSeconds]))}
instance JSON.ToJSON MssManifestConfigurationProperty where
  toJSON MssManifestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestName" JSON..= manifestName]
              (Prelude.catMaybes
                 [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                  (JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
                  (JSON..=) "ManifestWindowSeconds"
                    Prelude.<$> manifestWindowSeconds])))
instance Property "FilterConfiguration" MssManifestConfigurationProperty where
  type PropertyType "FilterConfiguration" MssManifestConfigurationProperty = FilterConfigurationProperty
  set newValue MssManifestConfigurationProperty {..}
    = MssManifestConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestLayout" MssManifestConfigurationProperty where
  type PropertyType "ManifestLayout" MssManifestConfigurationProperty = Value Prelude.Text
  set newValue MssManifestConfigurationProperty {..}
    = MssManifestConfigurationProperty
        {manifestLayout = Prelude.pure newValue, ..}
instance Property "ManifestName" MssManifestConfigurationProperty where
  type PropertyType "ManifestName" MssManifestConfigurationProperty = Value Prelude.Text
  set newValue MssManifestConfigurationProperty {..}
    = MssManifestConfigurationProperty {manifestName = newValue, ..}
instance Property "ManifestWindowSeconds" MssManifestConfigurationProperty where
  type PropertyType "ManifestWindowSeconds" MssManifestConfigurationProperty = Value Prelude.Integer
  set newValue MssManifestConfigurationProperty {..}
    = MssManifestConfigurationProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}