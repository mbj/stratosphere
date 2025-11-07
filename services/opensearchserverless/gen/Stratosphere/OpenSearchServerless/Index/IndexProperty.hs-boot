module Stratosphere.OpenSearchServerless.Index.IndexProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IndexProperty :: Prelude.Type
instance ToResourceProperties IndexProperty
instance Prelude.Eq IndexProperty
instance Prelude.Show IndexProperty
instance JSON.ToJSON IndexProperty