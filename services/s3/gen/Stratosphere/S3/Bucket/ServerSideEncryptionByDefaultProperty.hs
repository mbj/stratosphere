module Stratosphere.S3.Bucket.ServerSideEncryptionByDefaultProperty (
        ServerSideEncryptionByDefaultProperty(..),
        mkServerSideEncryptionByDefaultProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionByDefaultProperty
  = ServerSideEncryptionByDefaultProperty {kMSMasterKeyID :: (Prelude.Maybe (Value Prelude.Text)),
                                           sSEAlgorithm :: (Value Prelude.Text)}
mkServerSideEncryptionByDefaultProperty ::
  Value Prelude.Text -> ServerSideEncryptionByDefaultProperty
mkServerSideEncryptionByDefaultProperty sSEAlgorithm
  = ServerSideEncryptionByDefaultProperty
      {sSEAlgorithm = sSEAlgorithm, kMSMasterKeyID = Prelude.Nothing}
instance ToResourceProperties ServerSideEncryptionByDefaultProperty where
  toResourceProperties ServerSideEncryptionByDefaultProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ServerSideEncryptionByDefault",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SSEAlgorithm" JSON..= sSEAlgorithm]
                           (Prelude.catMaybes
                              [(JSON..=) "KMSMasterKeyID" Prelude.<$> kMSMasterKeyID]))}
instance JSON.ToJSON ServerSideEncryptionByDefaultProperty where
  toJSON ServerSideEncryptionByDefaultProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SSEAlgorithm" JSON..= sSEAlgorithm]
              (Prelude.catMaybes
                 [(JSON..=) "KMSMasterKeyID" Prelude.<$> kMSMasterKeyID])))
instance Property "KMSMasterKeyID" ServerSideEncryptionByDefaultProperty where
  type PropertyType "KMSMasterKeyID" ServerSideEncryptionByDefaultProperty = Value Prelude.Text
  set newValue ServerSideEncryptionByDefaultProperty {..}
    = ServerSideEncryptionByDefaultProperty
        {kMSMasterKeyID = Prelude.pure newValue, ..}
instance Property "SSEAlgorithm" ServerSideEncryptionByDefaultProperty where
  type PropertyType "SSEAlgorithm" ServerSideEncryptionByDefaultProperty = Value Prelude.Text
  set newValue ServerSideEncryptionByDefaultProperty {..}
    = ServerSideEncryptionByDefaultProperty
        {sSEAlgorithm = newValue, ..}