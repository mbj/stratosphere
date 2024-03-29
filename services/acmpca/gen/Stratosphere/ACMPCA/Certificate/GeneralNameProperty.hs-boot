module Stratosphere.ACMPCA.Certificate.GeneralNameProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GeneralNameProperty :: Prelude.Type
instance ToResourceProperties GeneralNameProperty
instance Prelude.Eq GeneralNameProperty
instance Prelude.Show GeneralNameProperty
instance JSON.ToJSON GeneralNameProperty