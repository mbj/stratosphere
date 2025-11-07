module Stratosphere.Logs.Transformer.TypeConverterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TypeConverterProperty :: Prelude.Type
instance ToResourceProperties TypeConverterProperty
instance Prelude.Eq TypeConverterProperty
instance Prelude.Show TypeConverterProperty
instance JSON.ToJSON TypeConverterProperty