module Stratosphere.Amplify.Domain.CertificateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CertificateProperty :: Prelude.Type
instance ToResourceProperties CertificateProperty
instance Prelude.Eq CertificateProperty
instance Prelude.Show CertificateProperty
instance JSON.ToJSON CertificateProperty