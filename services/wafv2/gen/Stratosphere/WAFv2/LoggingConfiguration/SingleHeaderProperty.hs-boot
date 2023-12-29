module Stratosphere.WAFv2.LoggingConfiguration.SingleHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SingleHeaderProperty :: Prelude.Type
instance ToResourceProperties SingleHeaderProperty
instance Prelude.Eq SingleHeaderProperty
instance Prelude.Show SingleHeaderProperty
instance JSON.ToJSON SingleHeaderProperty