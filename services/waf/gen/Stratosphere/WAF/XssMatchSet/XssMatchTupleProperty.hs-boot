module Stratosphere.WAF.XssMatchSet.XssMatchTupleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data XssMatchTupleProperty :: Prelude.Type
instance ToResourceProperties XssMatchTupleProperty
instance JSON.ToJSON XssMatchTupleProperty