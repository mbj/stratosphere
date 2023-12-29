module Stratosphere.AppConfig.Extension.ParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParameterProperty :: Prelude.Type
instance ToResourceProperties ParameterProperty
instance Prelude.Eq ParameterProperty
instance Prelude.Show ParameterProperty
instance JSON.ToJSON ParameterProperty