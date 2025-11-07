module Stratosphere.Logs.Transformer.GrokProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrokProperty :: Prelude.Type
instance ToResourceProperties GrokProperty
instance Prelude.Eq GrokProperty
instance Prelude.Show GrokProperty
instance JSON.ToJSON GrokProperty