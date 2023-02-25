module Stratosphere.DynamoDB.Table.S3BucketSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3BucketSourceProperty :: Prelude.Type
instance ToResourceProperties S3BucketSourceProperty
instance JSON.ToJSON S3BucketSourceProperty