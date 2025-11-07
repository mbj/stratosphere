module Stratosphere.Logs.Transformer.ParseJSONProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseJSONProperty :: Prelude.Type
instance ToResourceProperties ParseJSONProperty
instance Prelude.Eq ParseJSONProperty
instance Prelude.Show ParseJSONProperty
instance JSON.ToJSON ParseJSONProperty