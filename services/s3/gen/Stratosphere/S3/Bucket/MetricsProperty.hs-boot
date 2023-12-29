module Stratosphere.S3.Bucket.MetricsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetricsProperty :: Prelude.Type
instance ToResourceProperties MetricsProperty
instance Prelude.Eq MetricsProperty
instance Prelude.Show MetricsProperty
instance JSON.ToJSON MetricsProperty