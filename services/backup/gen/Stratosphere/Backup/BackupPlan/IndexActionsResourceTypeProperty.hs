module Stratosphere.Backup.BackupPlan.IndexActionsResourceTypeProperty (
        IndexActionsResourceTypeProperty(..),
        mkIndexActionsResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IndexActionsResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-indexactionsresourcetype.html>
    IndexActionsResourceTypeProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-indexactionsresourcetype.html#cfn-backup-backupplan-indexactionsresourcetype-resourcetypes>
                                      resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexActionsResourceTypeProperty ::
  IndexActionsResourceTypeProperty
mkIndexActionsResourceTypeProperty
  = IndexActionsResourceTypeProperty
      {haddock_workaround_ = (), resourceTypes = Prelude.Nothing}
instance ToResourceProperties IndexActionsResourceTypeProperty where
  toResourceProperties IndexActionsResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.IndexActionsResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes])}
instance JSON.ToJSON IndexActionsResourceTypeProperty where
  toJSON IndexActionsResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceTypes" Prelude.<$> resourceTypes]))
instance Property "ResourceTypes" IndexActionsResourceTypeProperty where
  type PropertyType "ResourceTypes" IndexActionsResourceTypeProperty = ValueList Prelude.Text
  set newValue IndexActionsResourceTypeProperty {..}
    = IndexActionsResourceTypeProperty
        {resourceTypes = Prelude.pure newValue, ..}