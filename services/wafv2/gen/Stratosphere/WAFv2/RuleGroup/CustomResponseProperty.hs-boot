module Stratosphere.WAFv2.RuleGroup.CustomResponseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomResponseProperty :: Prelude.Type
instance ToResourceProperties CustomResponseProperty
instance JSON.ToJSON CustomResponseProperty