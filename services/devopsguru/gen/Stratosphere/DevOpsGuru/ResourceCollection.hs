module Stratosphere.DevOpsGuru.ResourceCollection (
        module Exports, ResourceCollection(..), mkResourceCollection
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DevOpsGuru.ResourceCollection.ResourceCollectionFilterProperty as Exports
import Stratosphere.ResourceProperties
data ResourceCollection
  = ResourceCollection {resourceCollectionFilter :: ResourceCollectionFilterProperty}
mkResourceCollection ::
  ResourceCollectionFilterProperty -> ResourceCollection
mkResourceCollection resourceCollectionFilter
  = ResourceCollection
      {resourceCollectionFilter = resourceCollectionFilter}
instance ToResourceProperties ResourceCollection where
  toResourceProperties ResourceCollection {..}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::ResourceCollection",
         properties = ["ResourceCollectionFilter"
                         JSON..= resourceCollectionFilter]}
instance JSON.ToJSON ResourceCollection where
  toJSON ResourceCollection {..}
    = JSON.object
        ["ResourceCollectionFilter" JSON..= resourceCollectionFilter]
instance Property "ResourceCollectionFilter" ResourceCollection where
  type PropertyType "ResourceCollectionFilter" ResourceCollection = ResourceCollectionFilterProperty
  set newValue ResourceCollection {}
    = ResourceCollection {resourceCollectionFilter = newValue, ..}