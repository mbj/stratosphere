module Stratosphere.S3.Bucket.TagFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagFilterProperty :: Prelude.Type
instance ToResourceProperties TagFilterProperty
instance JSON.ToJSON TagFilterProperty