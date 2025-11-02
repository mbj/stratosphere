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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-cloudformationcollectionfilter.html>
    CloudFormationCollectionFilterProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-cloudformationcollectionfilter.html#cfn-devopsguru-resourcecollection-cloudformationcollectionfilter-stacknames>
                                            stackNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudFormationCollectionFilterProperty ::
  CloudFormationCollectionFilterProperty
mkCloudFormationCollectionFilterProperty
  = CloudFormationCollectionFilterProperty
      {haddock_workaround_ = (), stackNames = Prelude.Nothing}
instance ToResourceProperties CloudFormationCollectionFilterProperty where
  toResourceProperties CloudFormationCollectionFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection.CloudFormationCollectionFilter",
         supportsTags = Prelude.False,
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
  set newValue CloudFormationCollectionFilterProperty {..}
    = CloudFormationCollectionFilterProperty
        {stackNames = Prelude.pure newValue, ..}