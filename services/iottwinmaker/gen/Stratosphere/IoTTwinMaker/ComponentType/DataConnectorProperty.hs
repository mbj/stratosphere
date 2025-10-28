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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-dataconnector.html>
    DataConnectorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-dataconnector.html#cfn-iottwinmaker-componenttype-dataconnector-isnative>
                           isNative :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-dataconnector.html#cfn-iottwinmaker-componenttype-dataconnector-lambda>
                           lambda :: (Prelude.Maybe LambdaFunctionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataConnectorProperty :: DataConnectorProperty
mkDataConnectorProperty
  = DataConnectorProperty
      {haddock_workaround_ = (), isNative = Prelude.Nothing,
       lambda = Prelude.Nothing}
instance ToResourceProperties DataConnectorProperty where
  toResourceProperties DataConnectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.DataConnector",
         supportsTags = Prelude.False,
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