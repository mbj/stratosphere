module Stratosphere.ResourceExplorer2.View.SearchFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SearchFilterProperty :: Prelude.Type
instance ToResourceProperties SearchFilterProperty
instance Prelude.Eq SearchFilterProperty
instance Prelude.Show SearchFilterProperty
instance JSON.ToJSON SearchFilterProperty