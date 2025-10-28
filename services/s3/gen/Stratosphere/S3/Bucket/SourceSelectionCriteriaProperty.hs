module Stratosphere.S3.Bucket.SourceSelectionCriteriaProperty (
        module Exports, SourceSelectionCriteriaProperty(..),
        mkSourceSelectionCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicaModificationsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.SseKmsEncryptedObjectsProperty as Exports
import Stratosphere.ResourceProperties
data SourceSelectionCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html>
    SourceSelectionCriteriaProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-replicamodifications>
                                     replicaModifications :: (Prelude.Maybe ReplicaModificationsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-sourceselectioncriteria.html#cfn-s3-bucket-sourceselectioncriteria-ssekmsencryptedobjects>
                                     sseKmsEncryptedObjects :: (Prelude.Maybe SseKmsEncryptedObjectsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceSelectionCriteriaProperty ::
  SourceSelectionCriteriaProperty
mkSourceSelectionCriteriaProperty
  = SourceSelectionCriteriaProperty
      {haddock_workaround_ = (), replicaModifications = Prelude.Nothing,
       sseKmsEncryptedObjects = Prelude.Nothing}
instance ToResourceProperties SourceSelectionCriteriaProperty where
  toResourceProperties SourceSelectionCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.SourceSelectionCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplicaModifications" Prelude.<$> replicaModifications,
                            (JSON..=) "SseKmsEncryptedObjects"
                              Prelude.<$> sseKmsEncryptedObjects])}
instance JSON.ToJSON SourceSelectionCriteriaProperty where
  toJSON SourceSelectionCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplicaModifications" Prelude.<$> replicaModifications,
               (JSON..=) "SseKmsEncryptedObjects"
                 Prelude.<$> sseKmsEncryptedObjects]))
instance Property "ReplicaModifications" SourceSelectionCriteriaProperty where
  type PropertyType "ReplicaModifications" SourceSelectionCriteriaProperty = ReplicaModificationsProperty
  set newValue SourceSelectionCriteriaProperty {..}
    = SourceSelectionCriteriaProperty
        {replicaModifications = Prelude.pure newValue, ..}
instance Property "SseKmsEncryptedObjects" SourceSelectionCriteriaProperty where
  type PropertyType "SseKmsEncryptedObjects" SourceSelectionCriteriaProperty = SseKmsEncryptedObjectsProperty
  set newValue SourceSelectionCriteriaProperty {..}
    = SourceSelectionCriteriaProperty
        {sseKmsEncryptedObjects = Prelude.pure newValue, ..}