module Stratosphere.Lambda.Function.EnvironmentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EnvironmentProperty :: Prelude.Type
instance ToResourceProperties EnvironmentProperty
instance Prelude.Eq EnvironmentProperty
instance Prelude.Show EnvironmentProperty
instance JSON.ToJSON EnvironmentProperty