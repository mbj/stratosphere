module Stratosphere.Omics.AnnotationStore.StoreOptionsProperty (
        module Exports, StoreOptionsProperty(..), mkStoreOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.AnnotationStore.TsvStoreOptionsProperty as Exports
import Stratosphere.ResourceProperties
data StoreOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-storeoptions.html>
    StoreOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-annotationstore-storeoptions.html#cfn-omics-annotationstore-storeoptions-tsvstoreoptions>
                          tsvStoreOptions :: TsvStoreOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStoreOptionsProperty ::
  TsvStoreOptionsProperty -> StoreOptionsProperty
mkStoreOptionsProperty tsvStoreOptions
  = StoreOptionsProperty
      {haddock_workaround_ = (), tsvStoreOptions = tsvStoreOptions}
instance ToResourceProperties StoreOptionsProperty where
  toResourceProperties StoreOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::AnnotationStore.StoreOptions",
         supportsTags = Prelude.False,
         properties = ["TsvStoreOptions" JSON..= tsvStoreOptions]}
instance JSON.ToJSON StoreOptionsProperty where
  toJSON StoreOptionsProperty {..}
    = JSON.object ["TsvStoreOptions" JSON..= tsvStoreOptions]
instance Property "TsvStoreOptions" StoreOptionsProperty where
  type PropertyType "TsvStoreOptions" StoreOptionsProperty = TsvStoreOptionsProperty
  set newValue StoreOptionsProperty {..}
    = StoreOptionsProperty {tsvStoreOptions = newValue, ..}