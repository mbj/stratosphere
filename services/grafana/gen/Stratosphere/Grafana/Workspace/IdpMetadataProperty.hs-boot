module Stratosphere.Grafana.Workspace.IdpMetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IdpMetadataProperty :: Prelude.Type
instance ToResourceProperties IdpMetadataProperty
instance JSON.ToJSON IdpMetadataProperty