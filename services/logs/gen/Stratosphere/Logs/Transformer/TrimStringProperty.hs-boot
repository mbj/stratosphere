module Stratosphere.Logs.Transformer.TrimStringProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TrimStringProperty :: Prelude.Type
instance ToResourceProperties TrimStringProperty
instance Prelude.Eq TrimStringProperty
instance Prelude.Show TrimStringProperty
instance JSON.ToJSON TrimStringProperty