module Stratosphere.MediaPackage.PackagingConfiguration.MssEncryptionProperty (
        module Exports, MssEncryptionProperty(..), mkMssEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
data MssEncryptionProperty
  = MssEncryptionProperty {spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssEncryptionProperty ::
  SpekeKeyProviderProperty -> MssEncryptionProperty
mkMssEncryptionProperty spekeKeyProvider
  = MssEncryptionProperty {spekeKeyProvider = spekeKeyProvider}
instance ToResourceProperties MssEncryptionProperty where
  toResourceProperties MssEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.MssEncryption",
         supportsTags = Prelude.False,
         properties = ["SpekeKeyProvider" JSON..= spekeKeyProvider]}
instance JSON.ToJSON MssEncryptionProperty where
  toJSON MssEncryptionProperty {..}
    = JSON.object ["SpekeKeyProvider" JSON..= spekeKeyProvider]
instance Property "SpekeKeyProvider" MssEncryptionProperty where
  type PropertyType "SpekeKeyProvider" MssEncryptionProperty = SpekeKeyProviderProperty
  set newValue MssEncryptionProperty {}
    = MssEncryptionProperty {spekeKeyProvider = newValue, ..}