module Stratosphere.EC2.PrefixList.EntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntryProperty :: Prelude.Type
instance ToResourceProperties EntryProperty
instance Prelude.Eq EntryProperty
instance Prelude.Show EntryProperty
instance JSON.ToJSON EntryProperty