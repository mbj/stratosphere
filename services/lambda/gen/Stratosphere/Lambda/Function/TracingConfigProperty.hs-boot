module Stratosphere.Lambda.Function.TracingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TracingConfigProperty :: Prelude.Type
instance ToResourceProperties TracingConfigProperty
instance Prelude.Eq TracingConfigProperty
instance Prelude.Show TracingConfigProperty
instance JSON.ToJSON TracingConfigProperty