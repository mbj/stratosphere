module Stratosphere.Logs.Transformer.ParsePostgresProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParsePostgresProperty :: Prelude.Type
instance ToResourceProperties ParsePostgresProperty
instance Prelude.Eq ParsePostgresProperty
instance Prelude.Show ParsePostgresProperty
instance JSON.ToJSON ParsePostgresProperty