module Stratosphere.WAFv2.WebACL.JsonBodyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JsonBodyProperty :: Prelude.Type
instance ToResourceProperties JsonBodyProperty
instance JSON.ToJSON JsonBodyProperty