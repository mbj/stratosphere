module Stratosphere.WAFv2.WebACL.JsonMatchPatternProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonMatchPatternProperty :: Prelude.Type
instance ToResourceProperties JsonMatchPatternProperty
instance JSON.ToJSON JsonMatchPatternProperty