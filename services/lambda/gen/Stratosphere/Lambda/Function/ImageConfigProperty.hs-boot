module Stratosphere.Lambda.Function.ImageConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ImageConfigProperty :: Prelude.Type
instance ToResourceProperties ImageConfigProperty
instance Prelude.Eq ImageConfigProperty
instance Prelude.Show ImageConfigProperty
instance JSON.ToJSON ImageConfigProperty