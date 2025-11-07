module Stratosphere.Logs.Transformer.ListToMapProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ListToMapProperty :: Prelude.Type
instance ToResourceProperties ListToMapProperty
instance Prelude.Eq ListToMapProperty
instance Prelude.Show ListToMapProperty
instance JSON.ToJSON ListToMapProperty