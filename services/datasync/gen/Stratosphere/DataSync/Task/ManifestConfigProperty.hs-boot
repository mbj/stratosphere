module Stratosphere.DataSync.Task.ManifestConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ManifestConfigProperty :: Prelude.Type
instance ToResourceProperties ManifestConfigProperty
instance Prelude.Eq ManifestConfigProperty
instance Prelude.Show ManifestConfigProperty
instance JSON.ToJSON ManifestConfigProperty