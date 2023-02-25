module Stratosphere.Kendra.Index.SearchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SearchProperty :: Prelude.Type
instance ToResourceProperties SearchProperty
instance JSON.ToJSON SearchProperty