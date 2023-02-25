module Stratosphere.Synthetics.Canary.ArtifactConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArtifactConfigProperty :: Prelude.Type
instance ToResourceProperties ArtifactConfigProperty
instance JSON.ToJSON ArtifactConfigProperty