module Stratosphere.WAFv2.WebACL.DataProtectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataProtectProperty :: Prelude.Type
instance ToResourceProperties DataProtectProperty
instance Prelude.Eq DataProtectProperty
instance Prelude.Show DataProtectProperty
instance JSON.ToJSON DataProtectProperty