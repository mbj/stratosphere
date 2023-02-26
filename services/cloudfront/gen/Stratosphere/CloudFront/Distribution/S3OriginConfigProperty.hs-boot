module Stratosphere.CloudFront.Distribution.S3OriginConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3OriginConfigProperty :: Prelude.Type
instance ToResourceProperties S3OriginConfigProperty
instance JSON.ToJSON S3OriginConfigProperty