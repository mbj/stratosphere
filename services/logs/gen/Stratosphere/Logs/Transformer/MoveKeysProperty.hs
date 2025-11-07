module Stratosphere.Logs.Transformer.MoveKeysProperty (
        module Exports, MoveKeysProperty(..), mkMoveKeysProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.MoveKeyEntryProperty as Exports
import Stratosphere.ResourceProperties
data MoveKeysProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeys.html>
    MoveKeysProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-movekeys.html#cfn-logs-transformer-movekeys-entries>
                      entries :: [MoveKeyEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMoveKeysProperty :: [MoveKeyEntryProperty] -> MoveKeysProperty
mkMoveKeysProperty entries
  = MoveKeysProperty {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties MoveKeysProperty where
  toResourceProperties MoveKeysProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.MoveKeys",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON MoveKeysProperty where
  toJSON MoveKeysProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" MoveKeysProperty where
  type PropertyType "Entries" MoveKeysProperty = [MoveKeyEntryProperty]
  set newValue MoveKeysProperty {..}
    = MoveKeysProperty {entries = newValue, ..}