module Stratosphere.SageMaker.MonitoringSchedule.S3OutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3OutputProperty :: Prelude.Type
instance ToResourceProperties S3OutputProperty
instance Prelude.Eq S3OutputProperty
instance Prelude.Show S3OutputProperty
instance JSON.ToJSON S3OutputProperty