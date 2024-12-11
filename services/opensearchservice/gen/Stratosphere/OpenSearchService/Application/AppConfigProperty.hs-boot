module Stratosphere.OpenSearchService.Application.AppConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AppConfigProperty :: Prelude.Type
instance ToResourceProperties AppConfigProperty
instance Prelude.Eq AppConfigProperty
instance Prelude.Show AppConfigProperty
instance JSON.ToJSON AppConfigProperty