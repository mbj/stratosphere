module Stratosphere.Logs.Transformer.CopyValueEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CopyValueEntryProperty :: Prelude.Type
instance ToResourceProperties CopyValueEntryProperty
instance Prelude.Eq CopyValueEntryProperty
instance Prelude.Show CopyValueEntryProperty
instance JSON.ToJSON CopyValueEntryProperty