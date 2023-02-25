module Stratosphere.MediaPackage.PackagingConfiguration.MssManifestProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MssManifestProperty :: Prelude.Type
instance ToResourceProperties MssManifestProperty
instance JSON.ToJSON MssManifestProperty