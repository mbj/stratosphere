module Stratosphere.ACMPCA.Certificate.KeyUsageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyUsageProperty :: Prelude.Type
instance ToResourceProperties KeyUsageProperty
instance JSON.ToJSON KeyUsageProperty