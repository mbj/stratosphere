module Stratosphere.IoT.JobTemplate.RetryCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetryCriteriaProperty :: Prelude.Type
instance ToResourceProperties RetryCriteriaProperty
instance JSON.ToJSON RetryCriteriaProperty