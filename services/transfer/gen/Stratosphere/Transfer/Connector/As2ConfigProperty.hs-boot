module Stratosphere.Transfer.Connector.As2ConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data As2ConfigProperty :: Prelude.Type
instance ToResourceProperties As2ConfigProperty
instance Prelude.Eq As2ConfigProperty
instance Prelude.Show As2ConfigProperty
instance JSON.ToJSON As2ConfigProperty