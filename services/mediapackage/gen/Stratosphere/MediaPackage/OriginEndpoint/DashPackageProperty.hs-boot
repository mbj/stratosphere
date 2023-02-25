module Stratosphere.MediaPackage.OriginEndpoint.DashPackageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DashPackageProperty :: Prelude.Type
instance ToResourceProperties DashPackageProperty
instance JSON.ToJSON DashPackageProperty