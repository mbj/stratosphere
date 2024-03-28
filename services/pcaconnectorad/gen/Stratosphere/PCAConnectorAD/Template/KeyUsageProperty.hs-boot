module Stratosphere.PCAConnectorAD.Template.KeyUsageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyUsageProperty :: Prelude.Type
instance ToResourceProperties KeyUsageProperty
instance Prelude.Eq KeyUsageProperty
instance Prelude.Show KeyUsageProperty
instance JSON.ToJSON KeyUsageProperty