module Stratosphere.DevOpsGuru.ResourceCollection.ResourceCollectionFilterProperty (
        module Exports, ResourceCollectionFilterProperty(..),
        mkResourceCollectionFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DevOpsGuru.ResourceCollection.CloudFormationCollectionFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.DevOpsGuru.ResourceCollection.TagCollectionProperty as Exports
import Stratosphere.ResourceProperties
data ResourceCollectionFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html>
    ResourceCollectionFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html#cfn-devopsguru-resourcecollection-resourcecollectionfilter-cloudformation>
                                      cloudFormation :: (Prelude.Maybe CloudFormationCollectionFilterProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html#cfn-devopsguru-resourcecollection-resourcecollectionfilter-tags>
                                      tags :: (Prelude.Maybe [TagCollectionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceCollectionFilterProperty ::
  ResourceCollectionFilterProperty
mkResourceCollectionFilterProperty
  = ResourceCollectionFilterProperty
      {cloudFormation = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResourceCollectionFilterProperty where
  toResourceProperties ResourceCollectionFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection.ResourceCollectionFilter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudFormation" Prelude.<$> cloudFormation,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ResourceCollectionFilterProperty where
  toJSON ResourceCollectionFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudFormation" Prelude.<$> cloudFormation,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CloudFormation" ResourceCollectionFilterProperty where
  type PropertyType "CloudFormation" ResourceCollectionFilterProperty = CloudFormationCollectionFilterProperty
  set newValue ResourceCollectionFilterProperty {..}
    = ResourceCollectionFilterProperty
        {cloudFormation = Prelude.pure newValue, ..}
instance Property "Tags" ResourceCollectionFilterProperty where
  type PropertyType "Tags" ResourceCollectionFilterProperty = [TagCollectionProperty]
  set newValue ResourceCollectionFilterProperty {..}
    = ResourceCollectionFilterProperty
        {tags = Prelude.pure newValue, ..}