module Stratosphere.MediaPackage.OriginEndpoint.CmafPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CmafPackageProperty :: Prelude.Type
instance ToResourceProperties CmafPackageProperty
instance Prelude.Eq CmafPackageProperty
instance Prelude.Show CmafPackageProperty
instance JSON.ToJSON CmafPackageProperty