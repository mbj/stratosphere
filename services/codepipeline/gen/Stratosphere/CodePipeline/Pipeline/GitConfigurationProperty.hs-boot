module Stratosphere.CodePipeline.Pipeline.GitConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GitConfigurationProperty :: Prelude.Type
instance ToResourceProperties GitConfigurationProperty
instance Prelude.Eq GitConfigurationProperty
instance Prelude.Show GitConfigurationProperty
instance JSON.ToJSON GitConfigurationProperty