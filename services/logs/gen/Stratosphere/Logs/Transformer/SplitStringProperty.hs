module Stratosphere.Logs.Transformer.SplitStringProperty (
        module Exports, SplitStringProperty(..), mkSplitStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.SplitStringEntryProperty as Exports
import Stratosphere.ResourceProperties
data SplitStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-splitstring.html>
    SplitStringProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-splitstring.html#cfn-logs-transformer-splitstring-entries>
                         entries :: [SplitStringEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplitStringProperty ::
  [SplitStringEntryProperty] -> SplitStringProperty
mkSplitStringProperty entries
  = SplitStringProperty {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties SplitStringProperty where
  toResourceProperties SplitStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.SplitString",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON SplitStringProperty where
  toJSON SplitStringProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" SplitStringProperty where
  type PropertyType "Entries" SplitStringProperty = [SplitStringEntryProperty]
  set newValue SplitStringProperty {..}
    = SplitStringProperty {entries = newValue, ..}