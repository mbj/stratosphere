module Stratosphere.MediaPackage.OriginEndpoint.HlsPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HlsPackageProperty :: Prelude.Type
instance ToResourceProperties HlsPackageProperty
instance Prelude.Eq HlsPackageProperty
instance Prelude.Show HlsPackageProperty
instance JSON.ToJSON HlsPackageProperty