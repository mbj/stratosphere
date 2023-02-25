module Stratosphere.Lightsail.Container.PortInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortInfoProperty :: Prelude.Type
instance ToResourceProperties PortInfoProperty
instance JSON.ToJSON PortInfoProperty