module Stratosphere.EC2.VerifiedAccessTrustProvider.OidcOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OidcOptionsProperty :: Prelude.Type
instance ToResourceProperties OidcOptionsProperty
instance JSON.ToJSON OidcOptionsProperty