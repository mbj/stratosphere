module Stratosphere.Glue.Trigger.PredicateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PredicateProperty :: Prelude.Type
instance ToResourceProperties PredicateProperty
instance JSON.ToJSON PredicateProperty