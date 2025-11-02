module Stratosphere.IoTEvents.DetectorModel.PayloadProperty (
        PayloadProperty(..), mkPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html>
    PayloadProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html#cfn-iotevents-detectormodel-payload-contentexpression>
                     contentExpression :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-payload.html#cfn-iotevents-detectormodel-payload-type>
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPayloadProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PayloadProperty
mkPayloadProperty contentExpression type'
  = PayloadProperty
      {haddock_workaround_ = (), contentExpression = contentExpression,
       type' = type'}
instance ToResourceProperties PayloadProperty where
  toResourceProperties PayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Payload",
         supportsTags = Prelude.False,
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