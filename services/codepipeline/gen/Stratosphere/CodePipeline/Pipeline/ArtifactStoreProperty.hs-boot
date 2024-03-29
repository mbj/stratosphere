module Stratosphere.CodePipeline.Pipeline.ArtifactStoreProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArtifactStoreProperty :: Prelude.Type
instance ToResourceProperties ArtifactStoreProperty
instance Prelude.Eq ArtifactStoreProperty
instance Prelude.Show ArtifactStoreProperty
instance JSON.ToJSON ArtifactStoreProperty