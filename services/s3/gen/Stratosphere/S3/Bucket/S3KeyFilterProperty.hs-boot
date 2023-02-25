module Stratosphere.S3.Bucket.S3KeyFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3KeyFilterProperty :: Prelude.Type
instance ToResourceProperties S3KeyFilterProperty
instance JSON.ToJSON S3KeyFilterProperty