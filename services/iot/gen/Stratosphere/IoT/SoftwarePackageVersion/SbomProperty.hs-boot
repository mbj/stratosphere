module Stratosphere.IoT.SoftwarePackageVersion.SbomProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SbomProperty :: Prelude.Type
instance ToResourceProperties SbomProperty
instance Prelude.Eq SbomProperty
instance Prelude.Show SbomProperty
instance JSON.ToJSON SbomProperty