module Stratosphere.DataBrew.Ruleset.ColumnSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnSelectorProperty :: Prelude.Type
instance ToResourceProperties ColumnSelectorProperty
instance Prelude.Eq ColumnSelectorProperty
instance Prelude.Show ColumnSelectorProperty
instance JSON.ToJSON ColumnSelectorProperty