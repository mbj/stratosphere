module Stratosphere.WAF.SizeConstraintSet.SizeConstraintProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SizeConstraintProperty :: Prelude.Type
instance ToResourceProperties SizeConstraintProperty
instance JSON.ToJSON SizeConstraintProperty