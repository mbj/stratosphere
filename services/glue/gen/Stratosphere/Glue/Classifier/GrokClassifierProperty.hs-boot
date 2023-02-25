module Stratosphere.Glue.Classifier.GrokClassifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrokClassifierProperty :: Prelude.Type
instance ToResourceProperties GrokClassifierProperty
instance JSON.ToJSON GrokClassifierProperty