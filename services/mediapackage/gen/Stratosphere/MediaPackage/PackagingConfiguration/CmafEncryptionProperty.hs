module Stratosphere.MediaPackage.PackagingConfiguration.CmafEncryptionProperty (
        module Exports, CmafEncryptionProperty(..),
        mkCmafEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
data CmafEncryptionProperty
  = CmafEncryptionProperty {spekeKeyProvider :: SpekeKeyProviderProperty}
mkCmafEncryptionProperty ::
  SpekeKeyProviderProperty -> CmafEncryptionProperty
mkCmafEncryptionProperty spekeKeyProvider
  = CmafEncryptionProperty {spekeKeyProvider = spekeKeyProvider}
instance ToResourceProperties CmafEncryptionProperty where
  toResourceProperties CmafEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.CmafEncryption",
         properties = ["SpekeKeyProvider" JSON..= spekeKeyProvider]}
instance JSON.ToJSON CmafEncryptionProperty where
  toJSON CmafEncryptionProperty {..}
    = JSON.object ["SpekeKeyProvider" JSON..= spekeKeyProvider]
instance Property "SpekeKeyProvider" CmafEncryptionProperty where
  type PropertyType "SpekeKeyProvider" CmafEncryptionProperty = SpekeKeyProviderProperty
  set newValue CmafEncryptionProperty {}
    = CmafEncryptionProperty {spekeKeyProvider = newValue, ..}