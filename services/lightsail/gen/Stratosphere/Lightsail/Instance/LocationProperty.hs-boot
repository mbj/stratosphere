module Stratosphere.Lightsail.Instance.LocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LocationProperty :: Prelude.Type
instance ToResourceProperties LocationProperty
instance JSON.ToJSON LocationProperty