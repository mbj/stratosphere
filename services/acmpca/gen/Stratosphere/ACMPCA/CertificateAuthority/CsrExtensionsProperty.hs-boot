module Stratosphere.ACMPCA.CertificateAuthority.CsrExtensionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsrExtensionsProperty :: Prelude.Type
instance ToResourceProperties CsrExtensionsProperty
instance JSON.ToJSON CsrExtensionsProperty