module Stratosphere.Batch.JobDefinition.EcsPropertiesProperty (
        module Exports, EcsPropertiesProperty(..), mkEcsPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EcsTaskPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data EcsPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecsproperties.html>
    EcsPropertiesProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecsproperties.html#cfn-batch-jobdefinition-ecsproperties-taskproperties>
                           taskProperties :: [EcsTaskPropertiesProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsPropertiesProperty ::
  [EcsTaskPropertiesProperty] -> EcsPropertiesProperty
mkEcsPropertiesProperty taskProperties
  = EcsPropertiesProperty
      {haddock_workaround_ = (), taskProperties = taskProperties}
instance ToResourceProperties EcsPropertiesProperty where
  toResourceProperties EcsPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EcsProperties",
         supportsTags = Prelude.False,
         properties = ["TaskProperties" JSON..= taskProperties]}
instance JSON.ToJSON EcsPropertiesProperty where
  toJSON EcsPropertiesProperty {..}
    = JSON.object ["TaskProperties" JSON..= taskProperties]
instance Property "TaskProperties" EcsPropertiesProperty where
  type PropertyType "TaskProperties" EcsPropertiesProperty = [EcsTaskPropertiesProperty]
  set newValue EcsPropertiesProperty {..}
    = EcsPropertiesProperty {taskProperties = newValue, ..}