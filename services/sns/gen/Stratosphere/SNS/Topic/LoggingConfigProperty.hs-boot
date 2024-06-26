module Stratosphere.SNS.Topic.LoggingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingConfigProperty :: Prelude.Type
instance ToResourceProperties LoggingConfigProperty
instance Prelude.Eq LoggingConfigProperty
instance Prelude.Show LoggingConfigProperty
instance JSON.ToJSON LoggingConfigProperty