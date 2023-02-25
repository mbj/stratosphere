module Stratosphere.Glue.Crawler.S3TargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3TargetProperty :: Prelude.Type
instance ToResourceProperties S3TargetProperty
instance JSON.ToJSON S3TargetProperty