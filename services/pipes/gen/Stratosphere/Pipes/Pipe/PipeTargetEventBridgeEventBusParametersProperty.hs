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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html>
    PipeTargetEventBridgeEventBusParametersProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html#cfn-pipes-pipe-pipetargeteventbridgeeventbusparameters-detailtype>
                                                     detailType :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html#cfn-pipes-pipe-pipetargeteventbridgeeventbusparameters-endpointid>
                                                     endpointId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html#cfn-pipes-pipe-pipetargeteventbridgeeventbusparameters-resources>
                                                     resources :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html#cfn-pipes-pipe-pipetargeteventbridgeeventbusparameters-source>
                                                     source :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargeteventbridgeeventbusparameters.html#cfn-pipes-pipe-pipetargeteventbridgeeventbusparameters-time>
                                                     time :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetEventBridgeEventBusParametersProperty ::
  PipeTargetEventBridgeEventBusParametersProperty
mkPipeTargetEventBridgeEventBusParametersProperty
  = PipeTargetEventBridgeEventBusParametersProperty
      {haddock_workaround_ = (), detailType = Prelude.Nothing,
       endpointId = Prelude.Nothing, resources = Prelude.Nothing,
       source = Prelude.Nothing, time = Prelude.Nothing}
instance ToResourceProperties PipeTargetEventBridgeEventBusParametersProperty where
  toResourceProperties
    PipeTargetEventBridgeEventBusParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetEventBridgeEventBusParameters",
         supportsTags = Prelude.False,
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
  type PropertyType "Resources" PipeTargetEventBridgeEventBusParametersProperty = ValueList Prelude.Text
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