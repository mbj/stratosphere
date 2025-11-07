module Stratosphere.Logs.Transformer.RenameKeysProperty (
        module Exports, RenameKeysProperty(..), mkRenameKeysProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.RenameKeyEntryProperty as Exports
import Stratosphere.ResourceProperties
data RenameKeysProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeys.html>
    RenameKeysProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-renamekeys.html#cfn-logs-transformer-renamekeys-entries>
                        entries :: [RenameKeyEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenameKeysProperty ::
  [RenameKeyEntryProperty] -> RenameKeysProperty
mkRenameKeysProperty entries
  = RenameKeysProperty {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties RenameKeysProperty where
  toResourceProperties RenameKeysProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.RenameKeys",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON RenameKeysProperty where
  toJSON RenameKeysProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" RenameKeysProperty where
  type PropertyType "Entries" RenameKeysProperty = [RenameKeyEntryProperty]
  set newValue RenameKeysProperty {..}
    = RenameKeysProperty {entries = newValue, ..}