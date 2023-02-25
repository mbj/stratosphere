module Stratosphere.IoTEvents.Input.AttributeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttributeProperty :: Prelude.Type
instance ToResourceProperties AttributeProperty
instance JSON.ToJSON AttributeProperty