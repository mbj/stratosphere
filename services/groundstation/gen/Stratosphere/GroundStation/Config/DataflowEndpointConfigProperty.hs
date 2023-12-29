module Stratosphere.GroundStation.Config.DataflowEndpointConfigProperty (
        DataflowEndpointConfigProperty(..),
        mkDataflowEndpointConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataflowEndpointConfigProperty
  = DataflowEndpointConfigProperty {dataflowEndpointName :: (Prelude.Maybe (Value Prelude.Text)),
                                    dataflowEndpointRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataflowEndpointConfigProperty :: DataflowEndpointConfigProperty
mkDataflowEndpointConfigProperty
  = DataflowEndpointConfigProperty
      {dataflowEndpointName = Prelude.Nothing,
       dataflowEndpointRegion = Prelude.Nothing}
instance ToResourceProperties DataflowEndpointConfigProperty where
  toResourceProperties DataflowEndpointConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.DataflowEndpointConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataflowEndpointName" Prelude.<$> dataflowEndpointName,
                            (JSON..=) "DataflowEndpointRegion"
                              Prelude.<$> dataflowEndpointRegion])}
instance JSON.ToJSON DataflowEndpointConfigProperty where
  toJSON DataflowEndpointConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataflowEndpointName" Prelude.<$> dataflowEndpointName,
               (JSON..=) "DataflowEndpointRegion"
                 Prelude.<$> dataflowEndpointRegion]))
instance Property "DataflowEndpointName" DataflowEndpointConfigProperty where
  type PropertyType "DataflowEndpointName" DataflowEndpointConfigProperty = Value Prelude.Text
  set newValue DataflowEndpointConfigProperty {..}
    = DataflowEndpointConfigProperty
        {dataflowEndpointName = Prelude.pure newValue, ..}
instance Property "DataflowEndpointRegion" DataflowEndpointConfigProperty where
  type PropertyType "DataflowEndpointRegion" DataflowEndpointConfigProperty = Value Prelude.Text
  set newValue DataflowEndpointConfigProperty {..}
    = DataflowEndpointConfigProperty
        {dataflowEndpointRegion = Prelude.pure newValue, ..}