module Stratosphere.IoTEvents.DetectorModel.DetectorModelDefinitionProperty (
        module Exports, DetectorModelDefinitionProperty(..),
        mkDetectorModelDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.StateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DetectorModelDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html>
    DetectorModelDefinitionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-initialstatename>
                                     initialStateName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-states>
                                     states :: [StateProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDetectorModelDefinitionProperty ::
  Value Prelude.Text
  -> [StateProperty] -> DetectorModelDefinitionProperty
mkDetectorModelDefinitionProperty initialStateName states
  = DetectorModelDefinitionProperty
      {haddock_workaround_ = (), initialStateName = initialStateName,
       states = states}
instance ToResourceProperties DetectorModelDefinitionProperty where
  toResourceProperties DetectorModelDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.DetectorModelDefinition",
         supportsTags = Prelude.False,
         properties = ["InitialStateName" JSON..= initialStateName,
                       "States" JSON..= states]}
instance JSON.ToJSON DetectorModelDefinitionProperty where
  toJSON DetectorModelDefinitionProperty {..}
    = JSON.object
        ["InitialStateName" JSON..= initialStateName,
         "States" JSON..= states]
instance Property "InitialStateName" DetectorModelDefinitionProperty where
  type PropertyType "InitialStateName" DetectorModelDefinitionProperty = Value Prelude.Text
  set newValue DetectorModelDefinitionProperty {..}
    = DetectorModelDefinitionProperty {initialStateName = newValue, ..}
instance Property "States" DetectorModelDefinitionProperty where
  type PropertyType "States" DetectorModelDefinitionProperty = [StateProperty]
  set newValue DetectorModelDefinitionProperty {..}
    = DetectorModelDefinitionProperty {states = newValue, ..}