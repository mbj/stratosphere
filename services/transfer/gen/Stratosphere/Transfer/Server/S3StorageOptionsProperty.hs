module Stratosphere.Transfer.Server.S3StorageOptionsProperty (
        S3StorageOptionsProperty(..), mkS3StorageOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3StorageOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-s3storageoptions.html>
    S3StorageOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-s3storageoptions.html#cfn-transfer-server-s3storageoptions-directorylistingoptimization>
                              directoryListingOptimization :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3StorageOptionsProperty :: S3StorageOptionsProperty
mkS3StorageOptionsProperty
  = S3StorageOptionsProperty
      {haddock_workaround_ = (),
       directoryListingOptimization = Prelude.Nothing}
instance ToResourceProperties S3StorageOptionsProperty where
  toResourceProperties S3StorageOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.S3StorageOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DirectoryListingOptimization"
                              Prelude.<$> directoryListingOptimization])}
instance JSON.ToJSON S3StorageOptionsProperty where
  toJSON S3StorageOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DirectoryListingOptimization"
                 Prelude.<$> directoryListingOptimization]))
instance Property "DirectoryListingOptimization" S3StorageOptionsProperty where
  type PropertyType "DirectoryListingOptimization" S3StorageOptionsProperty = Value Prelude.Text
  set newValue S3StorageOptionsProperty {..}
    = S3StorageOptionsProperty
        {directoryListingOptimization = Prelude.pure newValue, ..}