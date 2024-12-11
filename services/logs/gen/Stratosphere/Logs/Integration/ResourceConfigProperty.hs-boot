module Stratosphere.Logs.Integration.ResourceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceConfigProperty :: Prelude.Type
instance ToResourceProperties ResourceConfigProperty
instance Prelude.Eq ResourceConfigProperty
instance Prelude.Show ResourceConfigProperty
instance JSON.ToJSON ResourceConfigProperty