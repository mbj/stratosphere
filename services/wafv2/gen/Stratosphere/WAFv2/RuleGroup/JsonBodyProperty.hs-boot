module Stratosphere.WAFv2.RuleGroup.JsonBodyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonBodyProperty :: Prelude.Type
instance ToResourceProperties JsonBodyProperty
instance Prelude.Eq JsonBodyProperty
instance Prelude.Show JsonBodyProperty
instance JSON.ToJSON JsonBodyProperty