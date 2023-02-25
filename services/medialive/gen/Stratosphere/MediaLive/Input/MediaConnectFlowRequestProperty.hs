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
  = MediaConnectFlowRequestProperty {flowArn :: (Prelude.Maybe (Value Prelude.Text))}
mkMediaConnectFlowRequestProperty ::
  MediaConnectFlowRequestProperty
mkMediaConnectFlowRequestProperty
  = MediaConnectFlowRequestProperty {flowArn = Prelude.Nothing}
instance ToResourceProperties MediaConnectFlowRequestProperty where
  toResourceProperties MediaConnectFlowRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MediaConnectFlowRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FlowArn" Prelude.<$> flowArn])}
instance JSON.ToJSON MediaConnectFlowRequestProperty where
  toJSON MediaConnectFlowRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FlowArn" Prelude.<$> flowArn]))
instance Property "FlowArn" MediaConnectFlowRequestProperty where
  type PropertyType "FlowArn" MediaConnectFlowRequestProperty = Value Prelude.Text
  set newValue MediaConnectFlowRequestProperty {}
    = MediaConnectFlowRequestProperty
        {flowArn = Prelude.pure newValue, ..}