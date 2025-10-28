module Stratosphere.Omics.ReferenceStore.SseConfigProperty (
        SseConfigProperty(..), mkSseConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SseConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-referencestore-sseconfig.html>
    SseConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-referencestore-sseconfig.html#cfn-omics-referencestore-sseconfig-keyarn>
                       keyArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-referencestore-sseconfig.html#cfn-omics-referencestore-sseconfig-type>
                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSseConfigProperty :: Value Prelude.Text -> SseConfigProperty
mkSseConfigProperty type'
  = SseConfigProperty
      {haddock_workaround_ = (), type' = type', keyArn = Prelude.Nothing}
instance ToResourceProperties SseConfigProperty where
  toResourceProperties SseConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::ReferenceStore.SseConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))}
instance JSON.ToJSON SseConfigProperty where
  toJSON SseConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])))
instance Property "KeyArn" SseConfigProperty where
  type PropertyType "KeyArn" SseConfigProperty = Value Prelude.Text
  set newValue SseConfigProperty {..}
    = SseConfigProperty {keyArn = Prelude.pure newValue, ..}
instance Property "Type" SseConfigProperty where
  type PropertyType "Type" SseConfigProperty = Value Prelude.Text
  set newValue SseConfigProperty {..}
    = SseConfigProperty {type' = newValue, ..}