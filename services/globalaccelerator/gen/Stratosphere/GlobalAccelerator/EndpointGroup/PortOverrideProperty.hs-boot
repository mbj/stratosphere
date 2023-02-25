module Stratosphere.GlobalAccelerator.EndpointGroup.PortOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PortOverrideProperty :: Prelude.Type
instance ToResourceProperties PortOverrideProperty
instance JSON.ToJSON PortOverrideProperty