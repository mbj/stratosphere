module Stratosphere.Glue.Table.TableIdentifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableIdentifierProperty :: Prelude.Type
instance ToResourceProperties TableIdentifierProperty
instance Prelude.Eq TableIdentifierProperty
instance Prelude.Show TableIdentifierProperty
instance JSON.ToJSON TableIdentifierProperty