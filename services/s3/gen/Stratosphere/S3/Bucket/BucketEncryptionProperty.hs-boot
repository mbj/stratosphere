module Stratosphere.S3.Bucket.BucketEncryptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BucketEncryptionProperty :: Prelude.Type
instance ToResourceProperties BucketEncryptionProperty
instance JSON.ToJSON BucketEncryptionProperty