module Stratosphere.WAF.SizeConstraintSet.FieldToMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldToMatchProperty :: Prelude.Type
instance ToResourceProperties FieldToMatchProperty
instance JSON.ToJSON FieldToMatchProperty