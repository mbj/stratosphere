module Stratosphere.Pipes.Pipe.PipeTargetSqsQueueParametersProperty (
        PipeTargetSqsQueueParametersProperty(..),
        mkPipeTargetSqsQueueParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetSqsQueueParametersProperty
  = PipeTargetSqsQueueParametersProperty {messageDeduplicationId :: (Prelude.Maybe (Value Prelude.Text)),
                                          messageGroupId :: (Prelude.Maybe (Value Prelude.Text))}
mkPipeTargetSqsQueueParametersProperty ::
  PipeTargetSqsQueueParametersProperty
mkPipeTargetSqsQueueParametersProperty
  = PipeTargetSqsQueueParametersProperty
      {messageDeduplicationId = Prelude.Nothing,
       messageGroupId = Prelude.Nothing}
instance ToResourceProperties PipeTargetSqsQueueParametersProperty where
  toResourceProperties PipeTargetSqsQueueParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetSqsQueueParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageDeduplicationId"
                              Prelude.<$> messageDeduplicationId,
                            (JSON..=) "MessageGroupId" Prelude.<$> messageGroupId])}
instance JSON.ToJSON PipeTargetSqsQueueParametersProperty where
  toJSON PipeTargetSqsQueueParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageDeduplicationId"
                 Prelude.<$> messageDeduplicationId,
               (JSON..=) "MessageGroupId" Prelude.<$> messageGroupId]))
instance Property "MessageDeduplicationId" PipeTargetSqsQueueParametersProperty where
  type PropertyType "MessageDeduplicationId" PipeTargetSqsQueueParametersProperty = Value Prelude.Text
  set newValue PipeTargetSqsQueueParametersProperty {..}
    = PipeTargetSqsQueueParametersProperty
        {messageDeduplicationId = Prelude.pure newValue, ..}
instance Property "MessageGroupId" PipeTargetSqsQueueParametersProperty where
  type PropertyType "MessageGroupId" PipeTargetSqsQueueParametersProperty = Value Prelude.Text
  set newValue PipeTargetSqsQueueParametersProperty {..}
    = PipeTargetSqsQueueParametersProperty
        {messageGroupId = Prelude.pure newValue, ..}