module Stratosphere.IoTTwinMaker.ComponentType.DataConnectorProperty (
        module Exports, DataConnectorProperty(..), mkDataConnectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.LambdaFunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataConnectorProperty
  = DataConnectorProperty {isNative :: (Prelude.Maybe (Value Prelude.Bool)),
                           lambda :: (Prelude.Maybe LambdaFunctionProperty)}
mkDataConnectorProperty :: DataConnectorProperty
mkDataConnectorProperty
  = DataConnectorProperty
      {isNative = Prelude.Nothing, lambda = Prelude.Nothing}
instance ToResourceProperties DataConnectorProperty where
  toResourceProperties DataConnectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.DataConnector",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsNative" Prelude.<$> isNative,
                            (JSON..=) "Lambda" Prelude.<$> lambda])}
instance JSON.ToJSON DataConnectorProperty where
  toJSON DataConnectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsNative" Prelude.<$> isNative,
               (JSON..=) "Lambda" Prelude.<$> lambda]))
instance Property "IsNative" DataConnectorProperty where
  type PropertyType "IsNative" DataConnectorProperty = Value Prelude.Bool
  set newValue DataConnectorProperty {..}
    = DataConnectorProperty {isNative = Prelude.pure newValue, ..}
instance Property "Lambda" DataConnectorProperty where
  type PropertyType "Lambda" DataConnectorProperty = LambdaFunctionProperty
  set newValue DataConnectorProperty {..}
    = DataConnectorProperty {lambda = Prelude.pure newValue, ..}