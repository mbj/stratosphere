module Stratosphere.MediaPackageV2.OriginEndpoint.HlsManifestConfigurationProperty (
        module Exports, HlsManifestConfigurationProperty(..),
        mkHlsManifestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ScteHlsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsManifestConfigurationProperty
  = HlsManifestConfigurationProperty {childManifestName :: (Prelude.Maybe (Value Prelude.Text)),
                                      filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                                      manifestName :: (Value Prelude.Text),
                                      manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                      programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                      scteHls :: (Prelude.Maybe ScteHlsProperty),
                                      url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsManifestConfigurationProperty ::
  Value Prelude.Text -> HlsManifestConfigurationProperty
mkHlsManifestConfigurationProperty manifestName
  = HlsManifestConfigurationProperty
      {manifestName = manifestName, childManifestName = Prelude.Nothing,
       filterConfiguration = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       scteHls = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties HlsManifestConfigurationProperty where
  toResourceProperties HlsManifestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.HlsManifestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestName" JSON..= manifestName]
                           (Prelude.catMaybes
                              [(JSON..=) "ChildManifestName" Prelude.<$> childManifestName,
                               (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                               (JSON..=) "ManifestWindowSeconds"
                                 Prelude.<$> manifestWindowSeconds,
                               (JSON..=) "ProgramDateTimeIntervalSeconds"
                                 Prelude.<$> programDateTimeIntervalSeconds,
                               (JSON..=) "ScteHls" Prelude.<$> scteHls,
                               (JSON..=) "Url" Prelude.<$> url]))}
instance JSON.ToJSON HlsManifestConfigurationProperty where
  toJSON HlsManifestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestName" JSON..= manifestName]
              (Prelude.catMaybes
                 [(JSON..=) "ChildManifestName" Prelude.<$> childManifestName,
                  (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                  (JSON..=) "ManifestWindowSeconds"
                    Prelude.<$> manifestWindowSeconds,
                  (JSON..=) "ProgramDateTimeIntervalSeconds"
                    Prelude.<$> programDateTimeIntervalSeconds,
                  (JSON..=) "ScteHls" Prelude.<$> scteHls,
                  (JSON..=) "Url" Prelude.<$> url])))
instance Property "ChildManifestName" HlsManifestConfigurationProperty where
  type PropertyType "ChildManifestName" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {childManifestName = Prelude.pure newValue, ..}
instance Property "FilterConfiguration" HlsManifestConfigurationProperty where
  type PropertyType "FilterConfiguration" HlsManifestConfigurationProperty = FilterConfigurationProperty
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestName" HlsManifestConfigurationProperty where
  type PropertyType "ManifestName" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty {manifestName = newValue, ..}
instance Property "ManifestWindowSeconds" HlsManifestConfigurationProperty where
  type PropertyType "ManifestWindowSeconds" HlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" HlsManifestConfigurationProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" HlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "ScteHls" HlsManifestConfigurationProperty where
  type PropertyType "ScteHls" HlsManifestConfigurationProperty = ScteHlsProperty
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {scteHls = Prelude.pure newValue, ..}
instance Property "Url" HlsManifestConfigurationProperty where
  type PropertyType "Url" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {url = Prelude.pure newValue, ..}