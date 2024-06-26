module Stratosphere.OpenSearchService.Domain.IdpProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IdpProperty :: Prelude.Type
instance ToResourceProperties IdpProperty
instance Prelude.Eq IdpProperty
instance Prelude.Show IdpProperty
instance JSON.ToJSON IdpProperty