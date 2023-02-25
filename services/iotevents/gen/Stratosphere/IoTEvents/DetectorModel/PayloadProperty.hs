module Stratosphere.IoTEvents.DetectorModel.PayloadProperty (
        PayloadProperty(..), mkPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PayloadProperty
  = PayloadProperty {contentExpression :: (Value Prelude.Text),
                     type' :: (Value Prelude.Text)}
mkPayloadProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PayloadProperty
mkPayloadProperty contentExpression type'
  = PayloadProperty
      {contentExpression = contentExpression, type' = type'}
instance ToResourceProperties PayloadProperty where
  toResourceProperties PayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Payload",
         properties = ["ContentExpression" JSON..= contentExpression,
                       "Type" JSON..= type']}
instance JSON.ToJSON PayloadProperty where
  toJSON PayloadProperty {..}
    = JSON.object
        ["ContentExpression" JSON..= contentExpression,
         "Type" JSON..= type']
instance Property "ContentExpression" PayloadProperty where
  type PropertyType "ContentExpression" PayloadProperty = Value Prelude.Text
  set newValue PayloadProperty {..}
    = PayloadProperty {contentExpression = newValue, ..}
instance Property "Type" PayloadProperty where
  type PropertyType "Type" PayloadProperty = Value Prelude.Text
  set newValue PayloadProperty {..}
    = PayloadProperty {type' = newValue, ..}