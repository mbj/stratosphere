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
  = DetectorModelDefinitionProperty {initialStateName :: (Value Prelude.Text),
                                     states :: [StateProperty]}
mkDetectorModelDefinitionProperty ::
  Value Prelude.Text
  -> [StateProperty] -> DetectorModelDefinitionProperty
mkDetectorModelDefinitionProperty initialStateName states
  = DetectorModelDefinitionProperty
      {initialStateName = initialStateName, states = states}
instance ToResourceProperties DetectorModelDefinitionProperty where
  toResourceProperties DetectorModelDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.DetectorModelDefinition",
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