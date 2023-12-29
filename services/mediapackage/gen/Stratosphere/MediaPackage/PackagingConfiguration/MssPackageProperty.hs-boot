module Stratosphere.MediaPackage.PackagingConfiguration.MssPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MssPackageProperty :: Prelude.Type
instance ToResourceProperties MssPackageProperty
instance Prelude.Eq MssPackageProperty
instance Prelude.Show MssPackageProperty
instance JSON.ToJSON MssPackageProperty