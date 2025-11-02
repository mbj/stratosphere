module Stratosphere.DLM.LifecyclePolicy.EventSourceProperty (
        module Exports, EventSourceProperty(..), mkEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.EventParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-eventsource.html>
    EventSourceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-eventsource.html#cfn-dlm-lifecyclepolicy-eventsource-parameters>
                         parameters :: (Prelude.Maybe EventParametersProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-eventsource.html#cfn-dlm-lifecyclepolicy-eventsource-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSourceProperty :: Value Prelude.Text -> EventSourceProperty
mkEventSourceProperty type'
  = EventSourceProperty
      {haddock_workaround_ = (), type' = type',
       parameters = Prelude.Nothing}
instance ToResourceProperties EventSourceProperty where
  toResourceProperties EventSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.EventSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON EventSourceProperty where
  toJSON EventSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Parameters" EventSourceProperty where
  type PropertyType "Parameters" EventSourceProperty = EventParametersProperty
  set newValue EventSourceProperty {..}
    = EventSourceProperty {parameters = Prelude.pure newValue, ..}
instance Property "Type" EventSourceProperty where
  type PropertyType "Type" EventSourceProperty = Value Prelude.Text
  set newValue EventSourceProperty {..}
    = EventSourceProperty {type' = newValue, ..}