module Stratosphere.Logs.Transformer.SplitStringEntryProperty (
        SplitStringEntryProperty(..), mkSplitStringEntryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplitStringEntryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-splitstringentry.html>
    SplitStringEntryProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-splitstringentry.html#cfn-logs-transformer-splitstringentry-delimiter>
                              delimiter :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-splitstringentry.html#cfn-logs-transformer-splitstringentry-source>
                              source :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplitStringEntryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SplitStringEntryProperty
mkSplitStringEntryProperty delimiter source
  = SplitStringEntryProperty
      {haddock_workaround_ = (), delimiter = delimiter, source = source}
instance ToResourceProperties SplitStringEntryProperty where
  toResourceProperties SplitStringEntryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.SplitStringEntry",
         supportsTags = Prelude.False,
         properties = ["Delimiter" JSON..= delimiter,
                       "Source" JSON..= source]}
instance JSON.ToJSON SplitStringEntryProperty where
  toJSON SplitStringEntryProperty {..}
    = JSON.object
        ["Delimiter" JSON..= delimiter, "Source" JSON..= source]
instance Property "Delimiter" SplitStringEntryProperty where
  type PropertyType "Delimiter" SplitStringEntryProperty = Value Prelude.Text
  set newValue SplitStringEntryProperty {..}
    = SplitStringEntryProperty {delimiter = newValue, ..}
instance Property "Source" SplitStringEntryProperty where
  type PropertyType "Source" SplitStringEntryProperty = Value Prelude.Text
  set newValue SplitStringEntryProperty {..}
    = SplitStringEntryProperty {source = newValue, ..}