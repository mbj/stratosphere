module Stratosphere.ACMPCA.Certificate.OtherNameProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OtherNameProperty :: Prelude.Type
instance ToResourceProperties OtherNameProperty
instance JSON.ToJSON OtherNameProperty