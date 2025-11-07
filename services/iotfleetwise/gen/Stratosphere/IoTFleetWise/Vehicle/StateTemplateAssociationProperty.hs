module Stratosphere.IoTFleetWise.Vehicle.StateTemplateAssociationProperty (
        module Exports, StateTemplateAssociationProperty(..),
        mkStateTemplateAssociationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Vehicle.StateTemplateUpdateStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateTemplateAssociationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html>
    StateTemplateAssociationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html#cfn-iotfleetwise-vehicle-statetemplateassociation-identifier>
                                      identifier :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html#cfn-iotfleetwise-vehicle-statetemplateassociation-statetemplateupdatestrategy>
                                      stateTemplateUpdateStrategy :: StateTemplateUpdateStrategyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateTemplateAssociationProperty ::
  Value Prelude.Text
  -> StateTemplateUpdateStrategyProperty
     -> StateTemplateAssociationProperty
mkStateTemplateAssociationProperty
  identifier
  stateTemplateUpdateStrategy
  = StateTemplateAssociationProperty
      {haddock_workaround_ = (), identifier = identifier,
       stateTemplateUpdateStrategy = stateTemplateUpdateStrategy}
instance ToResourceProperties StateTemplateAssociationProperty where
  toResourceProperties StateTemplateAssociationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Vehicle.StateTemplateAssociation",
         supportsTags = Prelude.False,
         properties = ["Identifier" JSON..= identifier,
                       "StateTemplateUpdateStrategy" JSON..= stateTemplateUpdateStrategy]}
instance JSON.ToJSON StateTemplateAssociationProperty where
  toJSON StateTemplateAssociationProperty {..}
    = JSON.object
        ["Identifier" JSON..= identifier,
         "StateTemplateUpdateStrategy" JSON..= stateTemplateUpdateStrategy]
instance Property "Identifier" StateTemplateAssociationProperty where
  type PropertyType "Identifier" StateTemplateAssociationProperty = Value Prelude.Text
  set newValue StateTemplateAssociationProperty {..}
    = StateTemplateAssociationProperty {identifier = newValue, ..}
instance Property "StateTemplateUpdateStrategy" StateTemplateAssociationProperty where
  type PropertyType "StateTemplateUpdateStrategy" StateTemplateAssociationProperty = StateTemplateUpdateStrategyProperty
  set newValue StateTemplateAssociationProperty {..}
    = StateTemplateAssociationProperty
        {stateTemplateUpdateStrategy = newValue, ..}