module Stratosphere.ECS.Service.SecretProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecretProperty :: Prelude.Type
instance ToResourceProperties SecretProperty
instance JSON.ToJSON SecretProperty