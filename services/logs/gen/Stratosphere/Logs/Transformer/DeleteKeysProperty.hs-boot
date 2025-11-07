module Stratosphere.Logs.Transformer.DeleteKeysProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeleteKeysProperty :: Prelude.Type
instance ToResourceProperties DeleteKeysProperty
instance Prelude.Eq DeleteKeysProperty
instance Prelude.Show DeleteKeysProperty
instance JSON.ToJSON DeleteKeysProperty