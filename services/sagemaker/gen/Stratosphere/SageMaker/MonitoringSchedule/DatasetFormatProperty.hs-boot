module Stratosphere.SageMaker.MonitoringSchedule.DatasetFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatasetFormatProperty :: Prelude.Type
instance ToResourceProperties DatasetFormatProperty
instance JSON.ToJSON DatasetFormatProperty