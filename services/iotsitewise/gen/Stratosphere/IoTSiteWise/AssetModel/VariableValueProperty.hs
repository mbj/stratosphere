module Stratosphere.IoTSiteWise.AssetModel.VariableValueProperty (
        module Exports, VariableValueProperty(..), mkVariableValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.PropertyPathDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariableValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html>
    VariableValueProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-hierarchyexternalid>
                           hierarchyExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-hierarchyid>
                           hierarchyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-hierarchylogicalid>
                           hierarchyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-propertyexternalid>
                           propertyExternalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-propertyid>
                           propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-propertylogicalid>
                           propertyLogicalId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-variablevalue.html#cfn-iotsitewise-assetmodel-variablevalue-propertypath>
                           propertyPath :: (Prelude.Maybe [PropertyPathDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariableValueProperty :: VariableValueProperty
mkVariableValueProperty
  = VariableValueProperty
      {haddock_workaround_ = (), hierarchyExternalId = Prelude.Nothing,
       hierarchyId = Prelude.Nothing,
       hierarchyLogicalId = Prelude.Nothing,
       propertyExternalId = Prelude.Nothing, propertyId = Prelude.Nothing,
       propertyLogicalId = Prelude.Nothing,
       propertyPath = Prelude.Nothing}
instance ToResourceProperties VariableValueProperty where
  toResourceProperties VariableValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.VariableValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HierarchyExternalId" Prelude.<$> hierarchyExternalId,
                            (JSON..=) "HierarchyId" Prelude.<$> hierarchyId,
                            (JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId,
                            (JSON..=) "PropertyExternalId" Prelude.<$> propertyExternalId,
                            (JSON..=) "PropertyId" Prelude.<$> propertyId,
                            (JSON..=) "PropertyLogicalId" Prelude.<$> propertyLogicalId,
                            (JSON..=) "PropertyPath" Prelude.<$> propertyPath])}
instance JSON.ToJSON VariableValueProperty where
  toJSON VariableValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HierarchyExternalId" Prelude.<$> hierarchyExternalId,
               (JSON..=) "HierarchyId" Prelude.<$> hierarchyId,
               (JSON..=) "HierarchyLogicalId" Prelude.<$> hierarchyLogicalId,
               (JSON..=) "PropertyExternalId" Prelude.<$> propertyExternalId,
               (JSON..=) "PropertyId" Prelude.<$> propertyId,
               (JSON..=) "PropertyLogicalId" Prelude.<$> propertyLogicalId,
               (JSON..=) "PropertyPath" Prelude.<$> propertyPath]))
instance Property "HierarchyExternalId" VariableValueProperty where
  type PropertyType "HierarchyExternalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {hierarchyExternalId = Prelude.pure newValue, ..}
instance Property "HierarchyId" VariableValueProperty where
  type PropertyType "HierarchyId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty {hierarchyId = Prelude.pure newValue, ..}
instance Property "HierarchyLogicalId" VariableValueProperty where
  type PropertyType "HierarchyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {hierarchyLogicalId = Prelude.pure newValue, ..}
instance Property "PropertyExternalId" VariableValueProperty where
  type PropertyType "PropertyExternalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {propertyExternalId = Prelude.pure newValue, ..}
instance Property "PropertyId" VariableValueProperty where
  type PropertyType "PropertyId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty {propertyId = Prelude.pure newValue, ..}
instance Property "PropertyLogicalId" VariableValueProperty where
  type PropertyType "PropertyLogicalId" VariableValueProperty = Value Prelude.Text
  set newValue VariableValueProperty {..}
    = VariableValueProperty
        {propertyLogicalId = Prelude.pure newValue, ..}
instance Property "PropertyPath" VariableValueProperty where
  type PropertyType "PropertyPath" VariableValueProperty = [PropertyPathDefinitionProperty]
  set newValue VariableValueProperty {..}
    = VariableValueProperty {propertyPath = Prelude.pure newValue, ..}