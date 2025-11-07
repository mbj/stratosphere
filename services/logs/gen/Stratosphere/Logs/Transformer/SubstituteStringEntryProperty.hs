module Stratosphere.Logs.Transformer.SubstituteStringEntryProperty (
        SubstituteStringEntryProperty(..), mkSubstituteStringEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubstituteStringEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestringentry.html>
    SubstituteStringEntryProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestringentry.html#cfn-logs-transformer-substitutestringentry-from>
                                   from :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestringentry.html#cfn-logs-transformer-substitutestringentry-source>
                                   source :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-substitutestringentry.html#cfn-logs-transformer-substitutestringentry-to>
                                   to :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubstituteStringEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SubstituteStringEntryProperty
mkSubstituteStringEntryProperty from source to
  = SubstituteStringEntryProperty
      {haddock_workaround_ = (), from = from, source = source, to = to}
instance ToResourceProperties SubstituteStringEntryProperty where
  toResourceProperties SubstituteStringEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.SubstituteStringEntry",
         supportsTags = Prelude.False,
         properties = ["From" JSON..= from, "Source" JSON..= source,
                       "To" JSON..= to]}
instance JSON.ToJSON SubstituteStringEntryProperty where
  toJSON SubstituteStringEntryProperty {..}
    = JSON.object
        ["From" JSON..= from, "Source" JSON..= source, "To" JSON..= to]
instance Property "From" SubstituteStringEntryProperty where
  type PropertyType "From" SubstituteStringEntryProperty = Value Prelude.Text
  set newValue SubstituteStringEntryProperty {..}
    = SubstituteStringEntryProperty {from = newValue, ..}
instance Property "Source" SubstituteStringEntryProperty where
  type PropertyType "Source" SubstituteStringEntryProperty = Value Prelude.Text
  set newValue SubstituteStringEntryProperty {..}
    = SubstituteStringEntryProperty {source = newValue, ..}
instance Property "To" SubstituteStringEntryProperty where
  type PropertyType "To" SubstituteStringEntryProperty = Value Prelude.Text
  set newValue SubstituteStringEntryProperty {..}
    = SubstituteStringEntryProperty {to = newValue, ..}