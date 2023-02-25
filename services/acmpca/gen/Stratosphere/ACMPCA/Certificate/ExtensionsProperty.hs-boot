module Stratosphere.ACMPCA.Certificate.ExtensionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExtensionsProperty :: Prelude.Type
instance ToResourceProperties ExtensionsProperty
instance JSON.ToJSON ExtensionsProperty