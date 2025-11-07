module Stratosphere.Logs.Transformer.ParseKeyValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseKeyValueProperty :: Prelude.Type
instance ToResourceProperties ParseKeyValueProperty
instance Prelude.Eq ParseKeyValueProperty
instance Prelude.Show ParseKeyValueProperty
instance JSON.ToJSON ParseKeyValueProperty