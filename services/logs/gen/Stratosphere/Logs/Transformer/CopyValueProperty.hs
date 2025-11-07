module Stratosphere.Logs.Transformer.CopyValueProperty (
        module Exports, CopyValueProperty(..), mkCopyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.CopyValueEntryProperty as Exports
import Stratosphere.ResourceProperties
data CopyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalue.html>
    CopyValueProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-copyvalue.html#cfn-logs-transformer-copyvalue-entries>
                       entries :: [CopyValueEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCopyValueProperty ::
  [CopyValueEntryProperty] -> CopyValueProperty
mkCopyValueProperty entries
  = CopyValueProperty {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties CopyValueProperty where
  toResourceProperties CopyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.CopyValue",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON CopyValueProperty where
  toJSON CopyValueProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" CopyValueProperty where
  type PropertyType "Entries" CopyValueProperty = [CopyValueEntryProperty]
  set newValue CopyValueProperty {..}
    = CopyValueProperty {entries = newValue, ..}