module Stratosphere.DataBrew.Job.DataCatalogOutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataCatalogOutputProperty :: Prelude.Type
instance ToResourceProperties DataCatalogOutputProperty
instance JSON.ToJSON DataCatalogOutputProperty