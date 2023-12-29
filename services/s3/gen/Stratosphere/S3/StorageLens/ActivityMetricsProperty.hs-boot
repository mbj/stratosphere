module Stratosphere.S3.StorageLens.ActivityMetricsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActivityMetricsProperty :: Prelude.Type
instance ToResourceProperties ActivityMetricsProperty
instance Prelude.Eq ActivityMetricsProperty
instance Prelude.Show ActivityMetricsProperty
instance JSON.ToJSON ActivityMetricsProperty