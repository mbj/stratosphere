module Stratosphere.OSIS.Pipeline.BufferOptionsProperty (
        BufferOptionsProperty(..), mkBufferOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BufferOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-bufferoptions.html>
    BufferOptionsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-bufferoptions.html#cfn-osis-pipeline-bufferoptions-persistentbufferenabled>
                           persistentBufferEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBufferOptionsProperty ::
  Value Prelude.Bool -> BufferOptionsProperty
mkBufferOptionsProperty persistentBufferEnabled
  = BufferOptionsProperty
      {haddock_workaround_ = (),
       persistentBufferEnabled = persistentBufferEnabled}
instance ToResourceProperties BufferOptionsProperty where
  toResourceProperties BufferOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.BufferOptions",
         supportsTags = Prelude.False,
         properties = ["PersistentBufferEnabled"
                         JSON..= persistentBufferEnabled]}
instance JSON.ToJSON BufferOptionsProperty where
  toJSON BufferOptionsProperty {..}
    = JSON.object
        ["PersistentBufferEnabled" JSON..= persistentBufferEnabled]
instance Property "PersistentBufferEnabled" BufferOptionsProperty where
  type PropertyType "PersistentBufferEnabled" BufferOptionsProperty = Value Prelude.Bool
  set newValue BufferOptionsProperty {..}
    = BufferOptionsProperty {persistentBufferEnabled = newValue, ..}