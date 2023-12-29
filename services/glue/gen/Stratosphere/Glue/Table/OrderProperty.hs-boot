module Stratosphere.Glue.Table.OrderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OrderProperty :: Prelude.Type
instance ToResourceProperties OrderProperty
instance Prelude.Eq OrderProperty
instance Prelude.Show OrderProperty
instance JSON.ToJSON OrderProperty