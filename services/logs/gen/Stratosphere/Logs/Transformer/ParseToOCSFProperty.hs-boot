module Stratosphere.Logs.Transformer.ParseToOCSFProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseToOCSFProperty :: Prelude.Type
instance ToResourceProperties ParseToOCSFProperty
instance Prelude.Eq ParseToOCSFProperty
instance Prelude.Show ParseToOCSFProperty
instance JSON.ToJSON ParseToOCSFProperty