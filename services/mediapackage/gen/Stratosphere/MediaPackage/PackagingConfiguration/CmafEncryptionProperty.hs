module Stratosphere.MediaPackage.PackagingConfiguration.CmafEncryptionProperty (
        module Exports, CmafEncryptionProperty(..),
        mkCmafEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
data CmafEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafencryption.html>
    CmafEncryptionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafencryption.html#cfn-mediapackage-packagingconfiguration-cmafencryption-spekekeyprovider>
                            spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafEncryptionProperty ::
  SpekeKeyProviderProperty -> CmafEncryptionProperty
mkCmafEncryptionProperty spekeKeyProvider
  = CmafEncryptionProperty
      {haddock_workaround_ = (), spekeKeyProvider = spekeKeyProvider}
instance ToResourceProperties CmafEncryptionProperty where
  toResourceProperties CmafEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.CmafEncryption",
         supportsTags = Prelude.False,
         properties = ["SpekeKeyProvider" JSON..= spekeKeyProvider]}
instance JSON.ToJSON CmafEncryptionProperty where
  toJSON CmafEncryptionProperty {..}
    = JSON.object ["SpekeKeyProvider" JSON..= spekeKeyProvider]
instance Property "SpekeKeyProvider" CmafEncryptionProperty where
  type PropertyType "SpekeKeyProvider" CmafEncryptionProperty = SpekeKeyProviderProperty
  set newValue CmafEncryptionProperty {..}
    = CmafEncryptionProperty {spekeKeyProvider = newValue, ..}