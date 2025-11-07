module Stratosphere.Logs.Transformer.AddKeyEntryProperty (
        AddKeyEntryProperty(..), mkAddKeyEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddKeyEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeyentry.html>
    AddKeyEntryProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeyentry.html#cfn-logs-transformer-addkeyentry-key>
                         key :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeyentry.html#cfn-logs-transformer-addkeyentry-overwriteifexists>
                         overwriteIfExists :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeyentry.html#cfn-logs-transformer-addkeyentry-value>
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddKeyEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AddKeyEntryProperty
mkAddKeyEntryProperty key value
  = AddKeyEntryProperty
      {haddock_workaround_ = (), key = key, value = value,
       overwriteIfExists = Prelude.Nothing}
instance ToResourceProperties AddKeyEntryProperty where
  toResourceProperties AddKeyEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.AddKeyEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists]))}
instance JSON.ToJSON AddKeyEntryProperty where
  toJSON AddKeyEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists])))
instance Property "Key" AddKeyEntryProperty where
  type PropertyType "Key" AddKeyEntryProperty = Value Prelude.Text
  set newValue AddKeyEntryProperty {..}
    = AddKeyEntryProperty {key = newValue, ..}
instance Property "OverwriteIfExists" AddKeyEntryProperty where
  type PropertyType "OverwriteIfExists" AddKeyEntryProperty = Value Prelude.Bool
  set newValue AddKeyEntryProperty {..}
    = AddKeyEntryProperty
        {overwriteIfExists = Prelude.pure newValue, ..}
instance Property "Value" AddKeyEntryProperty where
  type PropertyType "Value" AddKeyEntryProperty = Value Prelude.Text
  set newValue AddKeyEntryProperty {..}
    = AddKeyEntryProperty {value = newValue, ..}