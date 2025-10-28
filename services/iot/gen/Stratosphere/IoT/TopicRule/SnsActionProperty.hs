module Stratosphere.IoT.TopicRule.SnsActionProperty (
        SnsActionProperty(..), mkSnsActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnsActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html>
    SnsActionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-messageformat>
                       messageFormat :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-rolearn>
                       roleArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-snsaction.html#cfn-iot-topicrule-snsaction-targetarn>
                       targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnsActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SnsActionProperty
mkSnsActionProperty roleArn targetArn
  = SnsActionProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       targetArn = targetArn, messageFormat = Prelude.Nothing}
instance ToResourceProperties SnsActionProperty where
  toResourceProperties SnsActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.SnsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "MessageFormat" Prelude.<$> messageFormat]))}
instance JSON.ToJSON SnsActionProperty where
  toJSON SnsActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "MessageFormat" Prelude.<$> messageFormat])))
instance Property "MessageFormat" SnsActionProperty where
  type PropertyType "MessageFormat" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {messageFormat = Prelude.pure newValue, ..}
instance Property "RoleArn" SnsActionProperty where
  type PropertyType "RoleArn" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {roleArn = newValue, ..}
instance Property "TargetArn" SnsActionProperty where
  type PropertyType "TargetArn" SnsActionProperty = Value Prelude.Text
  set newValue SnsActionProperty {..}
    = SnsActionProperty {targetArn = newValue, ..}