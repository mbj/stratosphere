module Stratosphere.DataSync.Task.ManifestConfigSourceS3Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ManifestConfigSourceS3Property :: Prelude.Type
instance ToResourceProperties ManifestConfigSourceS3Property
instance Prelude.Eq ManifestConfigSourceS3Property
instance Prelude.Show ManifestConfigSourceS3Property
instance JSON.ToJSON ManifestConfigSourceS3Property