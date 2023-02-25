module Stratosphere.AppFlow.Flow.GlueDataCatalogProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GlueDataCatalogProperty :: Prelude.Type
instance ToResourceProperties GlueDataCatalogProperty
instance JSON.ToJSON GlueDataCatalogProperty