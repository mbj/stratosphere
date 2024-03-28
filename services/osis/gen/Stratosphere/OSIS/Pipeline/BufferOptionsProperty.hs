module Stratosphere.OSIS.Pipeline.BufferOptionsProperty (
        BufferOptionsProperty(..), mkBufferOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BufferOptionsProperty
  = BufferOptionsProperty {persistentBufferEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBufferOptionsProperty ::
  Value Prelude.Bool -> BufferOptionsProperty
mkBufferOptionsProperty persistentBufferEnabled
  = BufferOptionsProperty
      {persistentBufferEnabled = persistentBufferEnabled}
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
  set newValue BufferOptionsProperty {}
    = BufferOptionsProperty {persistentBufferEnabled = newValue, ..}