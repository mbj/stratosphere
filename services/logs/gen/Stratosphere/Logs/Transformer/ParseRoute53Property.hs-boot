module Stratosphere.Logs.Transformer.ParseRoute53Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseRoute53Property :: Prelude.Type
instance ToResourceProperties ParseRoute53Property
instance Prelude.Eq ParseRoute53Property
instance Prelude.Show ParseRoute53Property
instance JSON.ToJSON ParseRoute53Property