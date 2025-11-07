module Stratosphere.Logs.Transformer.ParseWAFProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseWAFProperty :: Prelude.Type
instance ToResourceProperties ParseWAFProperty
instance Prelude.Eq ParseWAFProperty
instance Prelude.Show ParseWAFProperty
instance JSON.ToJSON ParseWAFProperty