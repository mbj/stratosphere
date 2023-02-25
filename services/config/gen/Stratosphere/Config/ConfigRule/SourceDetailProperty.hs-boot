module Stratosphere.Config.ConfigRule.SourceDetailProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceDetailProperty :: Prelude.Type
instance ToResourceProperties SourceDetailProperty
instance JSON.ToJSON SourceDetailProperty