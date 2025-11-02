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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html>
    Ledger {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-deletionprotection>
            deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-kmskey>
            kmsKey :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-permissionsmode>
            permissionsMode :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLedger :: Value Prelude.Text -> Ledger
mkLedger permissionsMode
  = Ledger
      {haddock_workaround_ = (), permissionsMode = permissionsMode,
       deletionProtection = Prelude.Nothing, kmsKey = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Ledger where
  toResourceProperties Ledger {..}
    = ResourceProperties
        {awsType = "AWS::QLDB::Ledger", supportsTags = Prelude.True,
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