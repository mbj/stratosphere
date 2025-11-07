module Stratosphere.Logs.Transformer.MoveKeysProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MoveKeysProperty :: Prelude.Type
instance ToResourceProperties MoveKeysProperty
instance Prelude.Eq MoveKeysProperty
instance Prelude.Show MoveKeysProperty
instance JSON.ToJSON MoveKeysProperty