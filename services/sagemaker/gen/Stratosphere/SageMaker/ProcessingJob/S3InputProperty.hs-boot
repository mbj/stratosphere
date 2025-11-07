module Stratosphere.SageMaker.ProcessingJob.S3InputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3InputProperty :: Prelude.Type
instance ToResourceProperties S3InputProperty
instance Prelude.Eq S3InputProperty
instance Prelude.Show S3InputProperty
instance JSON.ToJSON S3InputProperty