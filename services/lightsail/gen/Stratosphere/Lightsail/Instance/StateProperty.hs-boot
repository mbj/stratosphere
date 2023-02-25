module Stratosphere.Lightsail.Instance.StateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StateProperty :: Prelude.Type
instance ToResourceProperties StateProperty
instance JSON.ToJSON StateProperty