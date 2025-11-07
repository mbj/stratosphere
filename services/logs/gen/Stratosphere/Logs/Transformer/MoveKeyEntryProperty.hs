module Stratosphere.Logs.Transformer.MoveKeyEntryProperty (
        MoveKeyEntryProperty(..), mkMoveKeyEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MoveKeyEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeyentry.html>
    MoveKeyEntryProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeyentry.html#cfn-logs-transformer-movekeyentry-overwriteifexists>
                          overwriteIfExists :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeyentry.html#cfn-logs-transformer-movekeyentry-source>
                          source :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeyentry.html#cfn-logs-transformer-movekeyentry-target>
                          target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMoveKeyEntryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MoveKeyEntryProperty
mkMoveKeyEntryProperty source target
  = MoveKeyEntryProperty
      {haddock_workaround_ = (), source = source, target = target,
       overwriteIfExists = Prelude.Nothing}
instance ToResourceProperties MoveKeyEntryProperty where
  toResourceProperties MoveKeyEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.MoveKeyEntry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source, "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists]))}
instance JSON.ToJSON MoveKeyEntryProperty where
  toJSON MoveKeyEntryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source, "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "OverwriteIfExists" Prelude.<$> overwriteIfExists])))
instance Property "OverwriteIfExists" MoveKeyEntryProperty where
  type PropertyType "OverwriteIfExists" MoveKeyEntryProperty = Value Prelude.Bool
  set newValue MoveKeyEntryProperty {..}
    = MoveKeyEntryProperty
        {overwriteIfExists = Prelude.pure newValue, ..}
instance Property "Source" MoveKeyEntryProperty where
  type PropertyType "Source" MoveKeyEntryProperty = Value Prelude.Text
  set newValue MoveKeyEntryProperty {..}
    = MoveKeyEntryProperty {source = newValue, ..}
instance Property "Target" MoveKeyEntryProperty where
  type PropertyType "Target" MoveKeyEntryProperty = Value Prelude.Text
  set newValue MoveKeyEntryProperty {..}
    = MoveKeyEntryProperty {target = newValue, ..}