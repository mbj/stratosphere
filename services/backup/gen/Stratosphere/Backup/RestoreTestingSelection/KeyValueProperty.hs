module Stratosphere.Backup.RestoreTestingSelection.KeyValueProperty (
        KeyValueProperty(..), mkKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-keyvalue.html>
    KeyValueProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-keyvalue.html#cfn-backup-restoretestingselection-keyvalue-key>
                      key :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-restoretestingselection-keyvalue.html#cfn-backup-restoretestingselection-keyvalue-value>
                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyValueProperty ::
  Value Prelude.Text -> Value Prelude.Text -> KeyValueProperty
mkKeyValueProperty key value
  = KeyValueProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties KeyValueProperty where
  toResourceProperties KeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::RestoreTestingSelection.KeyValue",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON KeyValueProperty where
  toJSON KeyValueProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" KeyValueProperty where
  type PropertyType "Key" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {key = newValue, ..}
instance Property "Value" KeyValueProperty where
  type PropertyType "Value" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {value = newValue, ..}