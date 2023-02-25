module Stratosphere.S3.Bucket.DefaultRetentionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DefaultRetentionProperty :: Prelude.Type
instance ToResourceProperties DefaultRetentionProperty
instance JSON.ToJSON DefaultRetentionProperty