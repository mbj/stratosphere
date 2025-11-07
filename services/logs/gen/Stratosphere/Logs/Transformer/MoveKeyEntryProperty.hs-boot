module Stratosphere.Logs.Transformer.MoveKeyEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MoveKeyEntryProperty :: Prelude.Type
instance ToResourceProperties MoveKeyEntryProperty
instance Prelude.Eq MoveKeyEntryProperty
instance Prelude.Show MoveKeyEntryProperty
instance JSON.ToJSON MoveKeyEntryProperty