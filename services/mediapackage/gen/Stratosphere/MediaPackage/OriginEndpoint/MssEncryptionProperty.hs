module Stratosphere.MediaPackage.OriginEndpoint.MssEncryptionProperty (
        module Exports, MssEncryptionProperty(..), mkMssEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
data MssEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-mssencryption.html>
    MssEncryptionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-mssencryption.html#cfn-mediapackage-originendpoint-mssencryption-spekekeyprovider>
                           spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssEncryptionProperty ::
  SpekeKeyProviderProperty -> MssEncryptionProperty
mkMssEncryptionProperty spekeKeyProvider
  = MssEncryptionProperty
      {haddock_workaround_ = (), spekeKeyProvider = spekeKeyProvider}
instance ToResourceProperties MssEncryptionProperty where
  toResourceProperties MssEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.MssEncryption",
         supportsTags = Prelude.False,
         properties = ["SpekeKeyProvider" JSON..= spekeKeyProvider]}
instance JSON.ToJSON MssEncryptionProperty where
  toJSON MssEncryptionProperty {..}
    = JSON.object ["SpekeKeyProvider" JSON..= spekeKeyProvider]
instance Property "SpekeKeyProvider" MssEncryptionProperty where
  type PropertyType "SpekeKeyProvider" MssEncryptionProperty = SpekeKeyProviderProperty
  set newValue MssEncryptionProperty {..}
    = MssEncryptionProperty {spekeKeyProvider = newValue, ..}