module Stratosphere.MediaPackage.PackagingConfiguration.MssPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MssPackageProperty :: Prelude.Type
instance ToResourceProperties MssPackageProperty
instance JSON.ToJSON MssPackageProperty