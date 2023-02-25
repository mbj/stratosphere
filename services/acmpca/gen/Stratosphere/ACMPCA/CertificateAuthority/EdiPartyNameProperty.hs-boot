module Stratosphere.ACMPCA.CertificateAuthority.EdiPartyNameProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EdiPartyNameProperty :: Prelude.Type
instance ToResourceProperties EdiPartyNameProperty
instance JSON.ToJSON EdiPartyNameProperty