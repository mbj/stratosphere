module Stratosphere.Logs.Transformer.RenameKeysProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RenameKeysProperty :: Prelude.Type
instance ToResourceProperties RenameKeysProperty
instance Prelude.Eq RenameKeysProperty
instance Prelude.Show RenameKeysProperty
instance JSON.ToJSON RenameKeysProperty