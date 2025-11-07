module Stratosphere.S3Tables.TableBucket.UnreferencedFileRemovalProperty (
        UnreferencedFileRemovalProperty(..),
        mkUnreferencedFileRemovalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnreferencedFileRemovalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-unreferencedfileremoval.html>
    UnreferencedFileRemovalProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-unreferencedfileremoval.html#cfn-s3tables-tablebucket-unreferencedfileremoval-noncurrentdays>
                                     noncurrentDays :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-unreferencedfileremoval.html#cfn-s3tables-tablebucket-unreferencedfileremoval-status>
                                     status :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-unreferencedfileremoval.html#cfn-s3tables-tablebucket-unreferencedfileremoval-unreferenceddays>
                                     unreferencedDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnreferencedFileRemovalProperty ::
  UnreferencedFileRemovalProperty
mkUnreferencedFileRemovalProperty
  = UnreferencedFileRemovalProperty
      {haddock_workaround_ = (), noncurrentDays = Prelude.Nothing,
       status = Prelude.Nothing, unreferencedDays = Prelude.Nothing}
instance ToResourceProperties UnreferencedFileRemovalProperty where
  toResourceProperties UnreferencedFileRemovalProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::TableBucket.UnreferencedFileRemoval",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NoncurrentDays" Prelude.<$> noncurrentDays,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "UnreferencedDays" Prelude.<$> unreferencedDays])}
instance JSON.ToJSON UnreferencedFileRemovalProperty where
  toJSON UnreferencedFileRemovalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NoncurrentDays" Prelude.<$> noncurrentDays,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "UnreferencedDays" Prelude.<$> unreferencedDays]))
instance Property "NoncurrentDays" UnreferencedFileRemovalProperty where
  type PropertyType "NoncurrentDays" UnreferencedFileRemovalProperty = Value Prelude.Integer
  set newValue UnreferencedFileRemovalProperty {..}
    = UnreferencedFileRemovalProperty
        {noncurrentDays = Prelude.pure newValue, ..}
instance Property "Status" UnreferencedFileRemovalProperty where
  type PropertyType "Status" UnreferencedFileRemovalProperty = Value Prelude.Text
  set newValue UnreferencedFileRemovalProperty {..}
    = UnreferencedFileRemovalProperty
        {status = Prelude.pure newValue, ..}
instance Property "UnreferencedDays" UnreferencedFileRemovalProperty where
  type PropertyType "UnreferencedDays" UnreferencedFileRemovalProperty = Value Prelude.Integer
  set newValue UnreferencedFileRemovalProperty {..}
    = UnreferencedFileRemovalProperty
        {unreferencedDays = Prelude.pure newValue, ..}