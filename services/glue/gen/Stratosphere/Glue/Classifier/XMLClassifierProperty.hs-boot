module Stratosphere.Glue.Classifier.XMLClassifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data XMLClassifierProperty :: Prelude.Type
instance ToResourceProperties XMLClassifierProperty
instance Prelude.Eq XMLClassifierProperty
instance Prelude.Show XMLClassifierProperty
instance JSON.ToJSON XMLClassifierProperty