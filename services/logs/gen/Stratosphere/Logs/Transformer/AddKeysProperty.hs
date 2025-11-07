module Stratosphere.Logs.Transformer.AddKeysProperty (
        module Exports, AddKeysProperty(..), mkAddKeysProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.AddKeyEntryProperty as Exports
import Stratosphere.ResourceProperties
data AddKeysProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeys.html>
    AddKeysProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-addkeys.html#cfn-logs-transformer-addkeys-entries>
                     entries :: [AddKeyEntryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddKeysProperty :: [AddKeyEntryProperty] -> AddKeysProperty
mkAddKeysProperty entries
  = AddKeysProperty {haddock_workaround_ = (), entries = entries}
instance ToResourceProperties AddKeysProperty where
  toResourceProperties AddKeysProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.AddKeys",
         supportsTags = Prelude.False,
         properties = ["Entries" JSON..= entries]}
instance JSON.ToJSON AddKeysProperty where
  toJSON AddKeysProperty {..}
    = JSON.object ["Entries" JSON..= entries]
instance Property "Entries" AddKeysProperty where
  type PropertyType "Entries" AddKeysProperty = [AddKeyEntryProperty]
  set newValue AddKeysProperty {..}
    = AddKeysProperty {entries = newValue, ..}