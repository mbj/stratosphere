module Stratosphere.MediaConvert.JobTemplate.HopDestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HopDestinationProperty :: Prelude.Type
instance ToResourceProperties HopDestinationProperty
instance JSON.ToJSON HopDestinationProperty