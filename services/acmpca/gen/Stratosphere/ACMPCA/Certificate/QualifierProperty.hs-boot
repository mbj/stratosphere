module Stratosphere.ACMPCA.Certificate.QualifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QualifierProperty :: Prelude.Type
instance ToResourceProperties QualifierProperty
instance JSON.ToJSON QualifierProperty