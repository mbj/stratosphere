module Stratosphere.IoTSiteWise.AssetModel.VariableValueProperty (
        VariableValueProperty(..), mkVariableValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariableValueProperty
  = VariableValueProperty {hierarchyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyLogicalId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariableValueProperty ::
  Value Prelude.Text -> VariableValueProperty
mkVariableValueProperty propertyLogicalId
  = VariableValueProperty
      {propertyLogicalId = propertyLogicalId,
       hierarchyLogicalId = Prelude.Nothing}
instance ToResourceProperties VariableValueProperty where
  toResourceProperties VariableValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.VariableValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PropertyLogicalId" JSON..= propertyLogicalId]
                           (Prelude.catMaybes
                              [(JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId]))}
instance JSON.ToJSON VariableValueProperty where
  toJSON VariableValueProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PropertyLogicalId" JSON..= propertyLogicalId]
              (Prelude.catMaybes
                 [(JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId])))
instance Property "HierarchyLogicalId" VariableValueProperty where
  type PropertyType "HierarchyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {hierarchyLogicalId = Prelude.pure newValue, ..}
instance Property "PropertyLogicalId" VariableValueProperty where
  type PropertyType "PropertyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty {propertyLogicalId = newValue, ..}