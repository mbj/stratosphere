module Stratosphere.LicenseManager.License.EntitlementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntitlementProperty :: Prelude.Type
instance ToResourceProperties EntitlementProperty
instance JSON.ToJSON EntitlementProperty