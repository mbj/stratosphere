module Stratosphere.DataSync.Task.OverridesProperty (
        module Exports, OverridesProperty(..), mkOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.DeletedProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.SkippedProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.TransferredProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.VerifiedProperty as Exports
import Stratosphere.ResourceProperties
data OverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html>
    OverridesProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-deleted>
                       deleted :: (Prelude.Maybe DeletedProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-skipped>
                       skipped :: (Prelude.Maybe SkippedProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-transferred>
                       transferred :: (Prelude.Maybe TransferredProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-verified>
                       verified :: (Prelude.Maybe VerifiedProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverridesProperty :: OverridesProperty
mkOverridesProperty
  = OverridesProperty
      {haddock_workaround_ = (), deleted = Prelude.Nothing,
       skipped = Prelude.Nothing, transferred = Prelude.Nothing,
       verified = Prelude.Nothing}
instance ToResourceProperties OverridesProperty where
  toResourceProperties OverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Overrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Deleted" Prelude.<$> deleted,
                            (JSON..=) "Skipped" Prelude.<$> skipped,
                            (JSON..=) "Transferred" Prelude.<$> transferred,
                            (JSON..=) "Verified" Prelude.<$> verified])}
instance JSON.ToJSON OverridesProperty where
  toJSON OverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Deleted" Prelude.<$> deleted,
               (JSON..=) "Skipped" Prelude.<$> skipped,
               (JSON..=) "Transferred" Prelude.<$> transferred,
               (JSON..=) "Verified" Prelude.<$> verified]))
instance Property "Deleted" OverridesProperty where
  type PropertyType "Deleted" OverridesProperty = DeletedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {deleted = Prelude.pure newValue, ..}
instance Property "Skipped" OverridesProperty where
  type PropertyType "Skipped" OverridesProperty = SkippedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {skipped = Prelude.pure newValue, ..}
instance Property "Transferred" OverridesProperty where
  type PropertyType "Transferred" OverridesProperty = TransferredProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {transferred = Prelude.pure newValue, ..}
instance Property "Verified" OverridesProperty where
  type PropertyType "Verified" OverridesProperty = VerifiedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {verified = Prelude.pure newValue, ..}