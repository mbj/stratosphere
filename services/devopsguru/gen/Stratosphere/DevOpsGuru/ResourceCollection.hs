module Stratosphere.DevOpsGuru.ResourceCollection (
        module Exports, ResourceCollection(..), mkResourceCollection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DevOpsGuru.ResourceCollection.ResourceCollectionFilterProperty as Exports
import Stratosphere.ResourceProperties
data ResourceCollection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-devopsguru-resourcecollection.html>
    ResourceCollection {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-devopsguru-resourcecollection.html#cfn-devopsguru-resourcecollection-resourcecollectionfilter>
                        resourceCollectionFilter :: ResourceCollectionFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceCollection ::
  ResourceCollectionFilterProperty -> ResourceCollection
mkResourceCollection resourceCollectionFilter
  = ResourceCollection
      {haddock_workaround_ = (),
       resourceCollectionFilter = resourceCollectionFilter}
instance ToResourceProperties ResourceCollection where
  toResourceProperties ResourceCollection {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection",
         supportsTags = Prelude.False,
         properties = ["ResourceCollectionFilter"
                         JSON..= resourceCollectionFilter]}
instance JSON.ToJSON ResourceCollection where
  toJSON ResourceCollection {..}
    = JSON.object
        ["ResourceCollectionFilter" JSON..= resourceCollectionFilter]
instance Property "ResourceCollectionFilter" ResourceCollection where
  type PropertyType "ResourceCollectionFilter" ResourceCollection = ResourceCollectionFilterProperty
  set newValue ResourceCollection {..}
    = ResourceCollection {resourceCollectionFilter = newValue, ..}