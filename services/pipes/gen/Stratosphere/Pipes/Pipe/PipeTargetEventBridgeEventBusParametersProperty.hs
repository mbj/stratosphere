module Stratosphere.Pipes.Pipe.PipeTargetEventBridgeEventBusParametersProperty (
        PipeTargetEventBridgeEventBusParametersProperty(..),
        mkPipeTargetEventBridgeEventBusParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetEventBridgeEventBusParametersProperty
  = PipeTargetEventBridgeEventBusParametersProperty {detailType :: (Prelude.Maybe (Value Prelude.Text)),
                                                     endpointId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     resources :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                                     source :: (Prelude.Maybe (Value Prelude.Text)),
                                                     time :: (Prelude.Maybe (Value Prelude.Text))}
mkPipeTargetEventBridgeEventBusParametersProperty ::
  PipeTargetEventBridgeEventBusParametersProperty
mkPipeTargetEventBridgeEventBusParametersProperty
  = PipeTargetEventBridgeEventBusParametersProperty
      {detailType = Prelude.Nothing, endpointId = Prelude.Nothing,
       resources = Prelude.Nothing, source = Prelude.Nothing,
       time = Prelude.Nothing}
instance ToResourceProperties PipeTargetEventBridgeEventBusParametersProperty where
  toResourceProperties
    PipeTargetEventBridgeEventBusParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetEventBridgeEventBusParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DetailType" Prelude.<$> detailType,
                            (JSON..=) "EndpointId" Prelude.<$> endpointId,
                            (JSON..=) "Resources" Prelude.<$> resources,
                            (JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "Time" Prelude.<$> time])}
instance JSON.ToJSON PipeTargetEventBridgeEventBusParametersProperty where
  toJSON PipeTargetEventBridgeEventBusParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DetailType" Prelude.<$> detailType,
               (JSON..=) "EndpointId" Prelude.<$> endpointId,
               (JSON..=) "Resources" Prelude.<$> resources,
               (JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "Time" Prelude.<$> time]))
instance Property "DetailType" PipeTargetEventBridgeEventBusParametersProperty where
  type PropertyType "DetailType" PipeTargetEventBridgeEventBusParametersProperty = Value Prelude.Text
  set newValue PipeTargetEventBridgeEventBusParametersProperty {..}
    = PipeTargetEventBridgeEventBusParametersProperty
        {detailType = Prelude.pure newValue, ..}
instance Property "EndpointId" PipeTargetEventBridgeEventBusParametersProperty where
  type PropertyType "EndpointId" PipeTargetEventBridgeEventBusParametersProperty = Value Prelude.Text
  set newValue PipeTargetEventBridgeEventBusParametersProperty {..}
    = PipeTargetEventBridgeEventBusParametersProperty
        {endpointId = Prelude.pure newValue, ..}
instance Property "Resources" PipeTargetEventBridgeEventBusParametersProperty where
  type PropertyType "Resources" PipeTargetEventBridgeEventBusParametersProperty = ValueList (Value Prelude.Text)
  set newValue PipeTargetEventBridgeEventBusParametersProperty {..}
    = PipeTargetEventBridgeEventBusParametersProperty
        {resources = Prelude.pure newValue, ..}
instance Property "Source" PipeTargetEventBridgeEventBusParametersProperty where
  type PropertyType "Source" PipeTargetEventBridgeEventBusParametersProperty = Value Prelude.Text
  set newValue PipeTargetEventBridgeEventBusParametersProperty {..}
    = PipeTargetEventBridgeEventBusParametersProperty
        {source = Prelude.pure newValue, ..}
instance Property "Time" PipeTargetEventBridgeEventBusParametersProperty where
  type PropertyType "Time" PipeTargetEventBridgeEventBusParametersProperty = Value Prelude.Text
  set newValue PipeTargetEventBridgeEventBusParametersProperty {..}
    = PipeTargetEventBridgeEventBusParametersProperty
        {time = Prelude.pure newValue, ..}