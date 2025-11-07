module Stratosphere.Logs.Transformer.AddKeysProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AddKeysProperty :: Prelude.Type
instance ToResourceProperties AddKeysProperty
instance Prelude.Eq AddKeysProperty
instance Prelude.Show AddKeysProperty
instance JSON.ToJSON AddKeysProperty