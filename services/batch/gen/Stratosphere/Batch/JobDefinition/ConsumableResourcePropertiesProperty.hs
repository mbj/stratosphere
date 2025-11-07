module Stratosphere.Batch.JobDefinition.ConsumableResourcePropertiesProperty (
        module Exports, ConsumableResourcePropertiesProperty(..),
        mkConsumableResourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ConsumableResourceRequirementProperty as Exports
import Stratosphere.ResourceProperties
data ConsumableResourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourceproperties.html>
    ConsumableResourcePropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-consumableresourceproperties.html#cfn-batch-jobdefinition-consumableresourceproperties-consumableresourcelist>
                                          consumableResourceList :: [ConsumableResourceRequirementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsumableResourcePropertiesProperty ::
  [ConsumableResourceRequirementProperty]
  -> ConsumableResourcePropertiesProperty
mkConsumableResourcePropertiesProperty consumableResourceList
  = ConsumableResourcePropertiesProperty
      {haddock_workaround_ = (),
       consumableResourceList = consumableResourceList}
instance ToResourceProperties ConsumableResourcePropertiesProperty where
  toResourceProperties ConsumableResourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ConsumableResourceProperties",
         supportsTags = Prelude.False,
         properties = ["ConsumableResourceList"
                         JSON..= consumableResourceList]}
instance JSON.ToJSON ConsumableResourcePropertiesProperty where
  toJSON ConsumableResourcePropertiesProperty {..}
    = JSON.object
        ["ConsumableResourceList" JSON..= consumableResourceList]
instance Property "ConsumableResourceList" ConsumableResourcePropertiesProperty where
  type PropertyType "ConsumableResourceList" ConsumableResourcePropertiesProperty = [ConsumableResourceRequirementProperty]
  set newValue ConsumableResourcePropertiesProperty {..}
    = ConsumableResourcePropertiesProperty
        {consumableResourceList = newValue, ..}