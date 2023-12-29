module Stratosphere.Lightsail.Instance.PortProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortProperty :: Prelude.Type
instance ToResourceProperties PortProperty
instance Prelude.Eq PortProperty
instance Prelude.Show PortProperty
instance JSON.ToJSON PortProperty