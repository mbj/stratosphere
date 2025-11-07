module Stratosphere.Logs.Transformer.RenameKeyEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RenameKeyEntryProperty :: Prelude.Type
instance ToResourceProperties RenameKeyEntryProperty
instance Prelude.Eq RenameKeyEntryProperty
instance Prelude.Show RenameKeyEntryProperty
instance JSON.ToJSON RenameKeyEntryProperty