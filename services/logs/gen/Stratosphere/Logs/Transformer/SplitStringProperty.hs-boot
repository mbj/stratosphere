module Stratosphere.Logs.Transformer.SplitStringProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SplitStringProperty :: Prelude.Type
instance ToResourceProperties SplitStringProperty
instance Prelude.Eq SplitStringProperty
instance Prelude.Show SplitStringProperty
instance JSON.ToJSON SplitStringProperty