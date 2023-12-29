module Stratosphere.Greengrass.ConnectorDefinitionVersion.ConnectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConnectorProperty :: Prelude.Type
instance ToResourceProperties ConnectorProperty
instance Prelude.Eq ConnectorProperty
instance Prelude.Show ConnectorProperty
instance JSON.ToJSON ConnectorProperty