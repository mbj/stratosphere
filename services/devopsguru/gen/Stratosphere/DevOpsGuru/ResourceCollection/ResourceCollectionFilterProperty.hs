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
  = ResourceCollectionFilterProperty {cloudFormation :: (Prelude.Maybe CloudFormationCollectionFilterProperty),
                                      tags :: (Prelude.Maybe [TagCollectionProperty])}
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