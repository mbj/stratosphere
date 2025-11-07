module Stratosphere.IoT.Command.CommandPayloadProperty (
        CommandPayloadProperty(..), mkCommandPayloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommandPayloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandpayload.html>
    CommandPayloadProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandpayload.html#cfn-iot-command-commandpayload-content>
                            content :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandpayload.html#cfn-iot-command-commandpayload-contenttype>
                            contentType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommandPayloadProperty :: CommandPayloadProperty
mkCommandPayloadProperty
  = CommandPayloadProperty
      {haddock_workaround_ = (), content = Prelude.Nothing,
       contentType = Prelude.Nothing}
instance ToResourceProperties CommandPayloadProperty where
  toResourceProperties CommandPayloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Command.CommandPayload",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Content" Prelude.<$> content,
                            (JSON..=) "ContentType" Prelude.<$> contentType])}
instance JSON.ToJSON CommandPayloadProperty where
  toJSON CommandPayloadProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Content" Prelude.<$> content,
               (JSON..=) "ContentType" Prelude.<$> contentType]))
instance Property "Content" CommandPayloadProperty where
  type PropertyType "Content" CommandPayloadProperty = Value Prelude.Text
  set newValue CommandPayloadProperty {..}
    = CommandPayloadProperty {content = Prelude.pure newValue, ..}
instance Property "ContentType" CommandPayloadProperty where
  type PropertyType "ContentType" CommandPayloadProperty = Value Prelude.Text
  set newValue CommandPayloadProperty {..}
    = CommandPayloadProperty {contentType = Prelude.pure newValue, ..}