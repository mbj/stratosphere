module Stratosphere.ACMPCA.Certificate.ValidityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ValidityProperty :: Prelude.Type
instance ToResourceProperties ValidityProperty
instance JSON.ToJSON ValidityProperty