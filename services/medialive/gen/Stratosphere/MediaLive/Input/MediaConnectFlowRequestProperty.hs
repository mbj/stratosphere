module Stratosphere.MediaLive.Input.MediaConnectFlowRequestProperty (
        MediaConnectFlowRequestProperty(..),
        mkMediaConnectFlowRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaConnectFlowRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html>
    MediaConnectFlowRequestProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-mediaconnectflowrequest.html#cfn-medialive-input-mediaconnectflowrequest-flowarn>
                                     flowArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaConnectFlowRequestProperty ::
  MediaConnectFlowRequestProperty
mkMediaConnectFlowRequestProperty
  = MediaConnectFlowRequestProperty
      {haddock_workaround_ = (), flowArn = Prelude.Nothing}
instance ToResourceProperties MediaConnectFlowRequestProperty where
  toResourceProperties MediaConnectFlowRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MediaConnectFlowRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FlowArn" Prelude.<$> flowArn])}
instance JSON.ToJSON MediaConnectFlowRequestProperty where
  toJSON MediaConnectFlowRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FlowArn" Prelude.<$> flowArn]))
instance Property "FlowArn" MediaConnectFlowRequestProperty where
  type PropertyType "FlowArn" MediaConnectFlowRequestProperty = Value Prelude.Text
  set newValue MediaConnectFlowRequestProperty {..}
    = MediaConnectFlowRequestProperty
        {flowArn = Prelude.pure newValue, ..}