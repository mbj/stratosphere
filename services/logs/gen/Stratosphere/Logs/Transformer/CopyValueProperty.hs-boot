module Stratosphere.Logs.Transformer.CopyValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CopyValueProperty :: Prelude.Type
instance ToResourceProperties CopyValueProperty
instance Prelude.Eq CopyValueProperty
instance Prelude.Show CopyValueProperty
instance JSON.ToJSON CopyValueProperty