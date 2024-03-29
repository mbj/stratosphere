module Stratosphere.Transfer.User.PosixProfileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PosixProfileProperty :: Prelude.Type
instance ToResourceProperties PosixProfileProperty
instance Prelude.Eq PosixProfileProperty
instance Prelude.Show PosixProfileProperty
instance JSON.ToJSON PosixProfileProperty