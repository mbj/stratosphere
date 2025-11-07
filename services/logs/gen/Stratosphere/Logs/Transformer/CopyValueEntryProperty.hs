module Stratosphere.Logs.Transformer.CopyValueEntryProperty (
        CopyValueEntryProperty(..), mkCopyValueEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CopyValueEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalueentry.html>
    CopyValueEntryProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalueentry.html#cfn-logs-transformer-copyvalueentry-overwriteifexists>
                            overwriteIfExists :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalueentry.html#cfn-logs-transformer-copyvalueentry-source>
                            source :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalueentry.html#cfn-logs-transformer-copyvalueentry-target>
                            target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCopyValueEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CopyValueEntryProperty
mkCopyValueEntryProperty source target
  = CopyValueEntryProperty
      {haddock_workaround_ = (), source = source, target = target,
       overwriteIfExists = Prelude.Nothing}
instance ToResourceProperties CopyValueEntryProperty where
  toResourceProperties CopyValueEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.CopyValueEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source, "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists]))}
instance JSON.ToJSON CopyValueEntryProperty where
  toJSON CopyValueEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source, "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists])))
instance Property "OverwriteIfExists" CopyValueEntryProperty where
  type PropertyType "OverwriteIfExists" CopyValueEntryProperty = Value Prelude.Bool
  set newValue CopyValueEntryProperty {..}
    = CopyValueEntryProperty
        {overwriteIfExists = Prelude.pure newValue, ..}
instance Property "Source" CopyValueEntryProperty where
  type PropertyType "Source" CopyValueEntryProperty = Value Prelude.Text
  set newValue CopyValueEntryProperty {..}
    = CopyValueEntryProperty {source = newValue, ..}
instance Property "Target" CopyValueEntryProperty where
  type PropertyType "Target" CopyValueEntryProperty = Value Prelude.Text
  set newValue CopyValueEntryProperty {..}
    = CopyValueEntryProperty {target = newValue, ..}