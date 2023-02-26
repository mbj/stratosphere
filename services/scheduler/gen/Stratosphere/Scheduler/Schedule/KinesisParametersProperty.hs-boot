module Stratosphere.Scheduler.Schedule.KinesisParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KinesisParametersProperty :: Prelude.Type
instance ToResourceProperties KinesisParametersProperty
instance JSON.ToJSON KinesisParametersProperty