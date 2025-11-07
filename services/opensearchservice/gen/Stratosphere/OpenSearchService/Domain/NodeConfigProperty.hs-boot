module Stratosphere.OpenSearchService.Domain.NodeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NodeConfigProperty :: Prelude.Type
instance ToResourceProperties NodeConfigProperty
instance Prelude.Eq NodeConfigProperty
instance Prelude.Show NodeConfigProperty
instance JSON.ToJSON NodeConfigProperty