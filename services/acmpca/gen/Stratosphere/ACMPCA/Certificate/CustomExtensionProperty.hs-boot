module Stratosphere.ACMPCA.Certificate.CustomExtensionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomExtensionProperty :: Prelude.Type
instance ToResourceProperties CustomExtensionProperty
instance JSON.ToJSON CustomExtensionProperty