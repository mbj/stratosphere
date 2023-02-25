module Stratosphere.DAX.Cluster.SSESpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SSESpecificationProperty :: Prelude.Type
instance ToResourceProperties SSESpecificationProperty
instance JSON.ToJSON SSESpecificationProperty