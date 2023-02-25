module Stratosphere.WAF.ByteMatchSet.ByteMatchTupleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ByteMatchTupleProperty :: Prelude.Type
instance ToResourceProperties ByteMatchTupleProperty
instance JSON.ToJSON ByteMatchTupleProperty