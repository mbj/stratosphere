module Stratosphere.Glue.MLTransform.GlueTablesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GlueTablesProperty :: Prelude.Type
instance ToResourceProperties GlueTablesProperty
instance JSON.ToJSON GlueTablesProperty