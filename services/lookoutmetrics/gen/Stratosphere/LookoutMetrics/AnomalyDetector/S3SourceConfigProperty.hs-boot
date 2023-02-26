module Stratosphere.LookoutMetrics.AnomalyDetector.S3SourceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3SourceConfigProperty :: Prelude.Type
instance ToResourceProperties S3SourceConfigProperty
instance JSON.ToJSON S3SourceConfigProperty