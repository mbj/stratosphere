module Stratosphere.ACMPCA.CertificateAuthority.AccessMethodProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessMethodProperty :: Prelude.Type
instance ToResourceProperties AccessMethodProperty
instance JSON.ToJSON AccessMethodProperty