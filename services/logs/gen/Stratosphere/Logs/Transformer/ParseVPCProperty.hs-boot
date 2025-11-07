module Stratosphere.Logs.Transformer.ParseVPCProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParseVPCProperty :: Prelude.Type
instance ToResourceProperties ParseVPCProperty
instance Prelude.Eq ParseVPCProperty
instance Prelude.Show ParseVPCProperty
instance JSON.ToJSON ParseVPCProperty