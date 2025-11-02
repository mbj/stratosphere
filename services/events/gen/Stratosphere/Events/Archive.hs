module Stratosphere.Events.Archive (
        Archive(..), mkArchive
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Archive
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html>
    Archive {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html#cfn-events-archive-archivename>
             archiveName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html#cfn-events-archive-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html#cfn-events-archive-eventpattern>
             eventPattern :: (Prelude.Maybe JSON.Object),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html#cfn-events-archive-retentiondays>
             retentionDays :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-archive.html#cfn-events-archive-sourcearn>
             sourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchive :: Value Prelude.Text -> Archive
mkArchive sourceArn
  = Archive
      {haddock_workaround_ = (), sourceArn = sourceArn,
       archiveName = Prelude.Nothing, description = Prelude.Nothing,
       eventPattern = Prelude.Nothing, retentionDays = Prelude.Nothing}
instance ToResourceProperties Archive where
  toResourceProperties Archive {..}
    = ResourceProperties
        {awsType = "AWS::Events::Archive", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceArn" JSON..= sourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ArchiveName" Prelude.<$> archiveName,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                               (JSON..=) "RetentionDays" Prelude.<$> retentionDays]))}
instance JSON.ToJSON Archive where
  toJSON Archive {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceArn" JSON..= sourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ArchiveName" Prelude.<$> archiveName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                  (JSON..=) "RetentionDays" Prelude.<$> retentionDays])))
instance Property "ArchiveName" Archive where
  type PropertyType "ArchiveName" Archive = Value Prelude.Text
  set newValue Archive {..}
    = Archive {archiveName = Prelude.pure newValue, ..}
instance Property "Description" Archive where
  type PropertyType "Description" Archive = Value Prelude.Text
  set newValue Archive {..}
    = Archive {description = Prelude.pure newValue, ..}
instance Property "EventPattern" Archive where
  type PropertyType "EventPattern" Archive = JSON.Object
  set newValue Archive {..}
    = Archive {eventPattern = Prelude.pure newValue, ..}
instance Property "RetentionDays" Archive where
  type PropertyType "RetentionDays" Archive = Value Prelude.Integer
  set newValue Archive {..}
    = Archive {retentionDays = Prelude.pure newValue, ..}
instance Property "SourceArn" Archive where
  type PropertyType "SourceArn" Archive = Value Prelude.Text
  set newValue Archive {..} = Archive {sourceArn = newValue, ..}