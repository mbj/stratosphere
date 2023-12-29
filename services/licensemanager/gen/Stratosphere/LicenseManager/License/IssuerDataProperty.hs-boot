module Stratosphere.LicenseManager.License.IssuerDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IssuerDataProperty :: Prelude.Type
instance ToResourceProperties IssuerDataProperty
instance Prelude.Eq IssuerDataProperty
instance Prelude.Show IssuerDataProperty
instance JSON.ToJSON IssuerDataProperty