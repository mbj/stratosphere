module Stratosphere.ResourceExplorer2.View.FiltersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FiltersProperty :: Prelude.Type
instance ToResourceProperties FiltersProperty
instance Prelude.Eq FiltersProperty
instance Prelude.Show FiltersProperty
instance JSON.ToJSON FiltersProperty