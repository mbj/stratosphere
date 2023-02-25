module Stratosphere.Glue.Crawler.CatalogTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CatalogTargetProperty :: Prelude.Type
instance ToResourceProperties CatalogTargetProperty
instance JSON.ToJSON CatalogTargetProperty