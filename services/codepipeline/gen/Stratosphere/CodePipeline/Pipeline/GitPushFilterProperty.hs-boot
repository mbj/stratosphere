module Stratosphere.CodePipeline.Pipeline.GitPushFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GitPushFilterProperty :: Prelude.Type
instance ToResourceProperties GitPushFilterProperty
instance Prelude.Eq GitPushFilterProperty
instance Prelude.Show GitPushFilterProperty
instance JSON.ToJSON GitPushFilterProperty