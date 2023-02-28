module Stratosphere.MediaPackage.PackagingConfiguration (
        module Exports, PackagingConfiguration(..),
        mkPackagingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.CmafPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.DashPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.HlsPackageProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.MssPackageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PackagingConfiguration
  = PackagingConfiguration {cmafPackage :: (Prelude.Maybe CmafPackageProperty),
                            dashPackage :: (Prelude.Maybe DashPackageProperty),
                            hlsPackage :: (Prelude.Maybe HlsPackageProperty),
                            id :: (Value Prelude.Text),
                            mssPackage :: (Prelude.Maybe MssPackageProperty),
                            packagingGroupId :: (Value Prelude.Text),
                            tags :: (Prelude.Maybe [Tag])}
mkPackagingConfiguration ::
  Value Prelude.Text -> Value Prelude.Text -> PackagingConfiguration
mkPackagingConfiguration id packagingGroupId
  = PackagingConfiguration
      {id = id, packagingGroupId = packagingGroupId,
       cmafPackage = Prelude.Nothing, dashPackage = Prelude.Nothing,
       hlsPackage = Prelude.Nothing, mssPackage = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PackagingConfiguration where
  toResourceProperties PackagingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "PackagingGroupId" JSON..= packagingGroupId]
                           (Prelude.catMaybes
                              [(JSON..=) "CmafPackage" Prelude.<$> cmafPackage,
                               (JSON..=) "DashPackage" Prelude.<$> dashPackage,
                               (JSON..=) "HlsPackage" Prelude.<$> hlsPackage,
                               (JSON..=) "MssPackage" Prelude.<$> mssPackage,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PackagingConfiguration where
  toJSON PackagingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "PackagingGroupId" JSON..= packagingGroupId]
              (Prelude.catMaybes
                 [(JSON..=) "CmafPackage" Prelude.<$> cmafPackage,
                  (JSON..=) "DashPackage" Prelude.<$> dashPackage,
                  (JSON..=) "HlsPackage" Prelude.<$> hlsPackage,
                  (JSON..=) "MssPackage" Prelude.<$> mssPackage,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CmafPackage" PackagingConfiguration where
  type PropertyType "CmafPackage" PackagingConfiguration = CmafPackageProperty
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {cmafPackage = Prelude.pure newValue, ..}
instance Property "DashPackage" PackagingConfiguration where
  type PropertyType "DashPackage" PackagingConfiguration = DashPackageProperty
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {dashPackage = Prelude.pure newValue, ..}
instance Property "HlsPackage" PackagingConfiguration where
  type PropertyType "HlsPackage" PackagingConfiguration = HlsPackageProperty
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {hlsPackage = Prelude.pure newValue, ..}
instance Property "Id" PackagingConfiguration where
  type PropertyType "Id" PackagingConfiguration = Value Prelude.Text
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {id = newValue, ..}
instance Property "MssPackage" PackagingConfiguration where
  type PropertyType "MssPackage" PackagingConfiguration = MssPackageProperty
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {mssPackage = Prelude.pure newValue, ..}
instance Property "PackagingGroupId" PackagingConfiguration where
  type PropertyType "PackagingGroupId" PackagingConfiguration = Value Prelude.Text
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {packagingGroupId = newValue, ..}
instance Property "Tags" PackagingConfiguration where
  type PropertyType "Tags" PackagingConfiguration = [Tag]
  set newValue PackagingConfiguration {..}
    = PackagingConfiguration {tags = Prelude.pure newValue, ..}