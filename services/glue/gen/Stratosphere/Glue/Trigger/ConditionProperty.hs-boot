module Stratosphere.Glue.Trigger.ConditionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConditionProperty :: Prelude.Type
instance ToResourceProperties ConditionProperty
instance Prelude.Eq ConditionProperty
instance Prelude.Show ConditionProperty
instance JSON.ToJSON ConditionProperty