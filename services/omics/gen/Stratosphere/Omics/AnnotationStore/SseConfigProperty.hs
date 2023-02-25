module Stratosphere.Omics.AnnotationStore.SseConfigProperty (
        SseConfigProperty(..), mkSseConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SseConfigProperty
  = SseConfigProperty {keyArn :: (Prelude.Maybe (Value Prelude.Text)),
                       type' :: (Value Prelude.Text)}
mkSseConfigProperty :: Value Prelude.Text -> SseConfigProperty
mkSseConfigProperty type'
  = SseConfigProperty {type' = type', keyArn = Prelude.Nothing}
instance ToResourceProperties SseConfigProperty where
  toResourceProperties SseConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::AnnotationStore.SseConfig",
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