module Stratosphere.Lightsail.Instance.NetworkingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NetworkingProperty :: Prelude.Type
instance ToResourceProperties NetworkingProperty
instance JSON.ToJSON NetworkingProperty