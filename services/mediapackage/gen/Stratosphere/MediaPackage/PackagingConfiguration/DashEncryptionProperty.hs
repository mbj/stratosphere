module Stratosphere.MediaPackage.PackagingConfiguration.DashEncryptionProperty (
        module Exports, DashEncryptionProperty(..),
        mkDashEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
data DashEncryptionProperty
  = DashEncryptionProperty {spekeKeyProvider :: SpekeKeyProviderProperty}
mkDashEncryptionProperty ::
  SpekeKeyProviderProperty -> DashEncryptionProperty
mkDashEncryptionProperty spekeKeyProvider
  = DashEncryptionProperty {spekeKeyProvider = spekeKeyProvider}
instance ToResourceProperties DashEncryptionProperty where
  toResourceProperties DashEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.DashEncryption",
         properties = ["SpekeKeyProvider" JSON..= spekeKeyProvider]}
instance JSON.ToJSON DashEncryptionProperty where
  toJSON DashEncryptionProperty {..}
    = JSON.object ["SpekeKeyProvider" JSON..= spekeKeyProvider]
instance Property "SpekeKeyProvider" DashEncryptionProperty where
  type PropertyType "SpekeKeyProvider" DashEncryptionProperty = SpekeKeyProviderProperty
  set newValue DashEncryptionProperty {}
    = DashEncryptionProperty {spekeKeyProvider = newValue, ..}