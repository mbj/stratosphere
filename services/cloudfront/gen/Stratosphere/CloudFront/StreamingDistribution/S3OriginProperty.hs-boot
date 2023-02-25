module Stratosphere.CloudFront.StreamingDistribution.S3OriginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3OriginProperty :: Prelude.Type
instance ToResourceProperties S3OriginProperty
instance JSON.ToJSON S3OriginProperty