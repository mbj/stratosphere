module Stratosphere.Logs.Transformer.RenameKeyEntryProperty (
        RenameKeyEntryProperty(..), mkRenameKeyEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenameKeyEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeyentry.html>
    RenameKeyEntryProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeyentry.html#cfn-logs-transformer-renamekeyentry-key>
                            key :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeyentry.html#cfn-logs-transformer-renamekeyentry-overwriteifexists>
                            overwriteIfExists :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeyentry.html#cfn-logs-transformer-renamekeyentry-renameto>
                            renameTo :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenameKeyEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RenameKeyEntryProperty
mkRenameKeyEntryProperty key renameTo
  = RenameKeyEntryProperty
      {haddock_workaround_ = (), key = key, renameTo = renameTo,
       overwriteIfExists = Prelude.Nothing}
instance ToResourceProperties RenameKeyEntryProperty where
  toResourceProperties RenameKeyEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.RenameKeyEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "RenameTo" JSON..= renameTo]
                           (Prelude.catMaybes
                              [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists]))}
instance JSON.ToJSON RenameKeyEntryProperty where
  toJSON RenameKeyEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "RenameTo" JSON..= renameTo]
              (Prelude.catMaybes
                 [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists])))
instance Property "Key" RenameKeyEntryProperty where
  type PropertyType "Key" RenameKeyEntryProperty = Value Prelude.Text
  set newValue RenameKeyEntryProperty {..}
    = RenameKeyEntryProperty {key = newValue, ..}
instance Property "OverwriteIfExists" RenameKeyEntryProperty where
  type PropertyType "OverwriteIfExists" RenameKeyEntryProperty = Value Prelude.Bool
  set newValue RenameKeyEntryProperty {..}
    = RenameKeyEntryProperty
        {overwriteIfExists = Prelude.pure newValue, ..}
instance Property "RenameTo" RenameKeyEntryProperty where
  type PropertyType "RenameTo" RenameKeyEntryProperty = Value Prelude.Text
  set newValue RenameKeyEntryProperty {..}
    = RenameKeyEntryProperty {renameTo = newValue, ..}