module Stratosphere.IoT.JobTemplate.AbortCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AbortCriteriaProperty :: Prelude.Type
instance ToResourceProperties AbortCriteriaProperty
instance JSON.ToJSON AbortCriteriaProperty