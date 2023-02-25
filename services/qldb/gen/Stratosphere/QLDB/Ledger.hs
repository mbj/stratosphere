module Stratosphere.QLDB.Ledger (
        Ledger(..), mkLedger
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Ledger
  = Ledger {deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
            kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Prelude.Maybe (Value Prelude.Text)),
            permissionsMode :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag])}
mkLedger :: Value Prelude.Text -> Ledger
mkLedger permissionsMode
  = Ledger
      {permissionsMode = permissionsMode,
       deletionProtection = Prelude.Nothing, kmsKey = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Ledger where
  toResourceProperties Ledger {..}
    = ResourceProperties
        {awsType = "AWS::QLDB::Ledger",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PermissionsMode" JSON..= permissionsMode]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                               (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Ledger where
  toJSON Ledger {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PermissionsMode" JSON..= permissionsMode]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                  (JSON..=) "KmsKey" Prelude.<$> kmsKey,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeletionProtection" Ledger where
  type PropertyType "DeletionProtection" Ledger = Value Prelude.Bool
  set newValue Ledger {..}
    = Ledger {deletionProtection = Prelude.pure newValue, ..}
instance Property "KmsKey" Ledger where
  type PropertyType "KmsKey" Ledger = Value Prelude.Text
  set newValue Ledger {..}
    = Ledger {kmsKey = Prelude.pure newValue, ..}
instance Property "Name" Ledger where
  type PropertyType "Name" Ledger = Value Prelude.Text
  set newValue Ledger {..}
    = Ledger {name = Prelude.pure newValue, ..}
instance Property "PermissionsMode" Ledger where
  type PropertyType "PermissionsMode" Ledger = Value Prelude.Text
  set newValue Ledger {..} = Ledger {permissionsMode = newValue, ..}
instance Property "Tags" Ledger where
  type PropertyType "Tags" Ledger = [Tag]
  set newValue Ledger {..}
    = Ledger {tags = Prelude.pure newValue, ..}