module Stratosphere.WAFv2.RuleGroup.BodyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BodyProperty :: Prelude.Type
instance ToResourceProperties BodyProperty
instance JSON.ToJSON BodyProperty