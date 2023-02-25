module Stratosphere.WAFv2.WebACL.FieldIdentifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldIdentifierProperty :: Prelude.Type
instance ToResourceProperties FieldIdentifierProperty
instance JSON.ToJSON FieldIdentifierProperty