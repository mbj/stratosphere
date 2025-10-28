module Stratosphere.Comprehend.Flywheel.EntityRecognitionConfigProperty (
        module Exports, EntityRecognitionConfigProperty(..),
        mkEntityRecognitionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.EntityTypesListItemProperty as Exports
import Stratosphere.ResourceProperties
data EntityRecognitionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-entityrecognitionconfig.html>
    EntityRecognitionConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-entityrecognitionconfig.html#cfn-comprehend-flywheel-entityrecognitionconfig-entitytypes>
                                     entityTypes :: (Prelude.Maybe [EntityTypesListItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityRecognitionConfigProperty ::
  EntityRecognitionConfigProperty
mkEntityRecognitionConfigProperty
  = EntityRecognitionConfigProperty
      {haddock_workaround_ = (), entityTypes = Prelude.Nothing}
instance ToResourceProperties EntityRecognitionConfigProperty where
  toResourceProperties EntityRecognitionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel.EntityRecognitionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EntityTypes" Prelude.<$> entityTypes])}
instance JSON.ToJSON EntityRecognitionConfigProperty where
  toJSON EntityRecognitionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EntityTypes" Prelude.<$> entityTypes]))
instance Property "EntityTypes" EntityRecognitionConfigProperty where
  type PropertyType "EntityTypes" EntityRecognitionConfigProperty = [EntityTypesListItemProperty]
  set newValue EntityRecognitionConfigProperty {..}
    = EntityRecognitionConfigProperty
        {entityTypes = Prelude.pure newValue, ..}