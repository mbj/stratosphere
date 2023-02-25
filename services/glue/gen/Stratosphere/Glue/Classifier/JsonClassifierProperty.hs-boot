module Stratosphere.Glue.Classifier.JsonClassifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonClassifierProperty :: Prelude.Type
instance ToResourceProperties JsonClassifierProperty
instance JSON.ToJSON JsonClassifierProperty