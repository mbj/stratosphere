module Stratosphere.DevOpsGuru.ResourceCollection.CloudFormationCollectionFilterProperty (
        CloudFormationCollectionFilterProperty(..),
        mkCloudFormationCollectionFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudFormationCollectionFilterProperty
  = CloudFormationCollectionFilterProperty {stackNames :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCloudFormationCollectionFilterProperty ::
  CloudFormationCollectionFilterProperty
mkCloudFormationCollectionFilterProperty
  = CloudFormationCollectionFilterProperty
      {stackNames = Prelude.Nothing}
instance ToResourceProperties CloudFormationCollectionFilterProperty where
  toResourceProperties CloudFormationCollectionFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection.CloudFormationCollectionFilter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StackNames" Prelude.<$> stackNames])}
instance JSON.ToJSON CloudFormationCollectionFilterProperty where
  toJSON CloudFormationCollectionFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StackNames" Prelude.<$> stackNames]))
instance Property "StackNames" CloudFormationCollectionFilterProperty where
  type PropertyType "StackNames" CloudFormationCollectionFilterProperty = ValueList Prelude.Text
  set newValue CloudFormationCollectionFilterProperty {}
    = CloudFormationCollectionFilterProperty
        {stackNames = Prelude.pure newValue, ..}