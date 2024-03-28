module Stratosphere.Transfer.Connector.SftpConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SftpConfigProperty :: Prelude.Type
instance ToResourceProperties SftpConfigProperty
instance Prelude.Eq SftpConfigProperty
instance Prelude.Show SftpConfigProperty
instance JSON.ToJSON SftpConfigProperty