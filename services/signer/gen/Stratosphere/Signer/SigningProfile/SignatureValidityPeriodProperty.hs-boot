module Stratosphere.Signer.SigningProfile.SignatureValidityPeriodProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SignatureValidityPeriodProperty :: Prelude.Type
instance ToResourceProperties SignatureValidityPeriodProperty
instance Prelude.Eq SignatureValidityPeriodProperty
instance Prelude.Show SignatureValidityPeriodProperty
instance JSON.ToJSON SignatureValidityPeriodProperty