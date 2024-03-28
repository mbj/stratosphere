module Stratosphere.DataSync.Task.TransferredProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TransferredProperty :: Prelude.Type
instance ToResourceProperties TransferredProperty
instance Prelude.Eq TransferredProperty
instance Prelude.Show TransferredProperty
instance JSON.ToJSON TransferredProperty