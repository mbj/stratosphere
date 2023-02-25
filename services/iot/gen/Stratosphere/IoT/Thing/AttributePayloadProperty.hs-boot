module Stratosphere.IoT.Thing.AttributePayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttributePayloadProperty :: Prelude.Type
instance ToResourceProperties AttributePayloadProperty
instance JSON.ToJSON AttributePayloadProperty